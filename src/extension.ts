import * as vscode from 'vscode';
import * as cp from 'child_process';
import * as path from 'path';

function getGeneratorCommand(context: vscode.ExtensionContext): string {
	const extensionPath = context.extensionPath;
	const generatorPath = path.join(extensionPath, 'bundle', 'bin', 'swagger_dart_generator.dart');
	
	// Run the script directly. Since we'll set CWD to the bundle folder,
	// it will automatically find the .dart_tool/package_config.json
	return `dart "${generatorPath}"`;
}

export function activate(context: vscode.ExtensionContext) {
	console.log('Swagger Dart Generator is now active!');

	// Register the Sidebar Provider
	const sidebarProvider = new SwaggerSidebarProvider(context.extensionUri, context);
	context.subscriptions.push(
		vscode.window.registerWebviewViewProvider(
			'swagger-dart-generator-view',
			sidebarProvider
		)
	);

	let openUiCmd = vscode.commands.registerCommand('swagger-dart-generator.open-ui', () => {
		GeneratorPanel.createOrShow(context.extensionUri, context);
	});

	let generateCmd = vscode.commands.registerCommand('swagger-dart-generator.generate', async (uri: vscode.Uri) => {
		const filePath = uri ? uri.fsPath : await vscode.window.showOpenDialog({
			canSelectFiles: true,
			filters: { 'JSON': ['json'] },
			openLabel: 'Select Swagger JSON'
		}).then(uris => uris?.[0].fsPath);

		if (!filePath) return;
		runGeneration(context, filePath);
	});

	let watchCmd = vscode.commands.registerCommand('swagger-dart-generator.watch', async (uri: vscode.Uri) => {
		const filePath = uri ? uri.fsPath : await vscode.window.showOpenDialog({
			canSelectFiles: true,
			filters: { 'JSON': ['json'] },
			openLabel: 'Select Swagger JSON to Watch'
		}).then(uris => uris?.[0].fsPath);

		if (!filePath) return;

		const workspaceFolder = vscode.workspace.getWorkspaceFolder(vscode.Uri.file(filePath)) || vscode.workspace.workspaceFolders?.[0];
		const workspaceRoot = workspaceFolder ? workspaceFolder.uri.fsPath : path.dirname(filePath);
		const absoluteInputPath = path.isAbsolute(filePath) ? filePath : path.resolve(workspaceRoot, filePath);
		const executionCwd = path.join(context.extensionPath, 'bundle');

		const terminal = vscode.window.createTerminal({
			name: 'Swagger Dart Watch',
			cwd: executionCwd
		});
		
		const baseCommand = getGeneratorCommand(context);
		
		terminal.show();
		terminal.sendText(`${baseCommand} -i "${absoluteInputPath}" --watch`);
		vscode.window.showInformationMessage('Watch mode started in terminal.');
	});

	context.subscriptions.push(openUiCmd, generateCmd, watchCmd);
}

function runGeneration(context: vscode.ExtensionContext, filePath: string, options: any = {}) {
	// 1. Detect the workspace folder where the file belongs, or use the first workspace folder
	const workspaceFolder = vscode.workspace.getWorkspaceFolder(vscode.Uri.file(filePath)) || vscode.workspace.workspaceFolders?.[0];
	
	// 2. Determine the workspace root
	const workspaceRoot = workspaceFolder ? workspaceFolder.uri.fsPath : path.dirname(filePath);
	
	// 3. Ensure paths are absolute for reliable execution from a different CWD
	const absoluteInputPath = path.isAbsolute(filePath) ? filePath : path.resolve(workspaceRoot, filePath);
	const outputDir = options.outputDir || workspaceRoot;
	const absoluteOutputDir = path.isAbsolute(outputDir) ? outputDir : path.resolve(workspaceRoot, outputDir);

	const baseCommand = getGeneratorCommand(context);

	let command = `${baseCommand} -i "${absoluteInputPath}"`;
	if (options.architecture) command += ` -a ${options.architecture}`;
	if (options.generateBloc) command += ` --bloc`;
	command += ` -o "${absoluteOutputDir}"`;

	// 4. The CWD for the process should be the bundle folder so Dart resolves internal packages correctly
	const executionCwd = path.join(context.extensionPath, 'bundle');

	vscode.window.withProgress({
		location: vscode.ProgressLocation.Notification,
		title: `Swagger Dart: Generating Code in ${path.basename(absoluteOutputDir)}...`,
		cancellable: false
	}, (progress) => {
		return new Promise((resolve, reject) => {
			cp.exec(command, { cwd: executionCwd }, (error, stdout, stderr) => {
				if (error) {
					vscode.window.showErrorMessage(`Generation failed: ${stderr || error.message}`);
					reject(error);
				} else {
					vscode.window.showInformationMessage('Code generated successfully!');
					resolve(stdout);
				}
			});
		});
	});
}

class GeneratorPanel {
	public static currentPanel: GeneratorPanel | undefined;
	private readonly _panel: vscode.WebviewPanel;
	private readonly _extensionUri: vscode.Uri;
	private readonly _context: vscode.ExtensionContext;
	private _disposables: vscode.Disposable[] = [];

	public static createOrShow(extensionUri: vscode.Uri, context: vscode.ExtensionContext) {
		const column = vscode.window.activeTextEditor ? vscode.window.activeTextEditor.viewColumn : undefined;

		if (GeneratorPanel.currentPanel) {
			GeneratorPanel.currentPanel._panel.reveal(column);
			return;
		}

		const panel = vscode.window.createWebviewPanel(
			'swaggerGenerator',
			'Swagger Dart Dashboard',
			column || vscode.ViewColumn.One,
			{
				enableScripts: true,
				localResourceRoots: [extensionUri]
			}
		);

		GeneratorPanel.currentPanel = new GeneratorPanel(panel, extensionUri, context);
	}

	private constructor(panel: vscode.WebviewPanel, extensionUri: vscode.Uri, context: vscode.ExtensionContext) {
		this._panel = panel;
		this._extensionUri = extensionUri;
		this._context = context;

		this._update();

		this._panel.onDidDispose(() => this.dispose(), null, this._disposables);

		this._panel.webview.onDidReceiveMessage(
			async message => {
				switch (message.command) {
					case 'selectFile':
						const uris = await vscode.window.showOpenDialog({
							canSelectFiles: true,
							filters: { 'JSON': ['json'] }
						});
						if (uris && uris.length > 0) {
							this._panel.webview.postMessage({ command: 'fileSelected', path: uris[0].fsPath });
						}
						return;
					case 'generate':
						runGeneration(this._context, message.config.inputPath, message.config);
						return;
				}
			},
			null,
			this._disposables
		);
	}

	public dispose() {
		GeneratorPanel.currentPanel = undefined;
		this._panel.dispose();
		while (this._disposables.length) {
			const x = this._disposables.pop();
			if (x) x.dispose();
		}
	}

	private _update() {
		this._panel.webview.html = this._getHtmlForWebview();
	}

	private _getHtmlForWebview() {
		return `<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Swagger Dart Dashboard</title>
    <style>
        body { font-family: var(--vscode-font-family); color: var(--vscode-foreground); padding: 15px; line-height: 1.4; font-size: 13px; }
        .container { width: 100%; box-sizing: border-box; }
        h1 { color: var(--vscode-textLink-foreground); font-size: 18px; margin-bottom: 20px; display: flex; align-items: center; gap: 8px; border-bottom: 1px solid var(--vscode-widget-border); padding-bottom: 8px; }
        .form-group { margin-bottom: 15px; }
        label { display: block; font-weight: bold; margin-bottom: 5px; font-size: 11px; color: var(--vscode-descriptionForeground); }
        input[type="text"], select { width: 100%; padding: 8px; background: var(--vscode-input-background); color: var(--vscode-input-foreground); border: 1px solid var(--vscode-input-border); border-radius: 4px; box-sizing: border-box; font-size: 12px; }
        .file-input { display: flex; flex-direction: column; gap: 5px; }
        button { cursor: pointer; padding: 8px 12px; border-radius: 4px; border: none; font-weight: 600; transition: opacity 0.2s; font-size: 12px; }
        .btn-primary { background: var(--vscode-button-background); color: var(--vscode-button-foreground); width: 100%; margin-top: 15px; }
        .btn-primary:hover { background: var(--vscode-button-hoverBackground); }
        .btn-secondary { background: var(--vscode-button-secondaryBackground); color: var(--vscode-button-secondaryForeground); align-self: flex-end; }
        .btn-secondary:hover { background: var(--vscode-button-secondaryHoverBackground); }
        .checkbox-group { display: flex; align-items: center; gap: 8px; margin-top: 10px; background: var(--vscode-input-background); padding: 8px; border-radius: 4px; border: 1px solid var(--vscode-input-border); }
        .checkbox-group input { width: 16px; height: 16px; cursor: pointer; }
        .checkbox-group label { margin-bottom: 0; cursor: pointer; }
        .footer { margin-top: 25px; font-size: 10px; text-align: center; color: var(--vscode-descriptionForeground); opacity: 0.7; }
        .badge { background: var(--vscode-badge-background); color: var(--vscode-badge-foreground); padding: 1px 6px; border-radius: 8px; font-size: 9px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>🧬 Swagger Dart <span class="badge">v2.0.0</span></h1>
        
        <div class="form-group">
            <label>Swagger JSON File</label>
            <div class="file-input">
                <input type="text" id="inputPath" placeholder="Path to swagger.json">
                <button class="btn-secondary" onclick="selectFile()">Browse</button>
            </div>
        </div>

        <div class="form-group">
            <label>Output Directory</label>
            <input type="text" id="outputDir" placeholder="Current directory (.)">
        </div>

        <div class="form-group">
            <label>Architecture Pattern</label>
            <select id="architecture">
                <option value="feature">Feature-First</option>
                <option value="layer">Layer-First</option>
                <option value="simple">Simple</option>
                <option value="clean-mixed">Clean Mixed</option>
            </select>
        </div>

        <div class="checkbox-group">
            <input type="checkbox" id="generateBloc">
            <label for="generateBloc">Generate Bloc/Cubit</label>
        </div>

        <button class="btn-primary" onclick="generate()">🚀 Run Generator</button>

        <div class="footer">
            Clean Architecture • v2.0.0
        </div>
    </div>

    <script>
        const vscode = acquireVsCodeApi();

        function selectFile() {
            vscode.postMessage({ command: 'selectFile' });
        }

        function generate() {
            const config = {
                inputPath: document.getElementById('inputPath').value,
                outputDir: document.getElementById('outputDir').value,
                architecture: document.getElementById('architecture').value,
                generateBloc: document.getElementById('generateBloc').checked
            };
            vscode.postMessage({ command: 'generate', config });
        }

        window.addEventListener('message', event => {
            const message = event.data;
            if (message.command === 'fileSelected') {
                document.getElementById('inputPath').value = message.path;
            }
        });
    </script>
</body>
</html>`;
	}
}

class SwaggerSidebarProvider implements vscode.WebviewViewProvider {
	private _view?: vscode.WebviewView;

	constructor(
		private readonly _extensionUri: vscode.Uri,
		private readonly _context: vscode.ExtensionContext
	) {}

	public resolveWebviewView(
		webviewView: vscode.WebviewView,
		context: vscode.WebviewViewResolveContext,
		_token: vscode.CancellationToken,
	) {
		this._view = webviewView;

		webviewView.webview.options = {
			enableScripts: true,
			localResourceRoots: [this._extensionUri]
		};

		webviewView.webview.html = this._getHtmlForWebview(webviewView.webview);

		webviewView.webview.onDidReceiveMessage(async (data) => {
			switch (data.command) {
				case 'selectFile':
					const uris = await vscode.window.showOpenDialog({
						canSelectFiles: true,
						filters: { 'JSON': ['json'] }
					});
					if (uris && uris.length > 0) {
						webviewView.webview.postMessage({ command: 'fileSelected', path: uris[0].fsPath });
					}
					break;
				case 'generate':
					runGeneration(this._context, data.config.inputPath, data.config);
					break;
			}
		});
	}

	private _getHtmlForWebview(webview: vscode.Webview) {
		const workspaceFolder = vscode.workspace.workspaceFolders?.[0]?.uri.fsPath || '';
		
		return `<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        :root {
            --primary-color: #4B39EF;
            --secondary-color: #39D2C0;
            --bg-color: #14181B;
            --card-bg: #1D2428;
            --text-main: #FFFFFF;
            --text-secondary: #95A1AC;
            --border-color: #262D34;
            --input-bg: #14181B;
        }
        
        body { 
            font-family: 'Outfit', 'Segoe UI', sans-serif; 
            color: var(--text-main); 
            background-color: var(--bg-color);
            padding: 16px; 
            margin: 0;
            line-height: 1.5;
            font-size: 13px;
        }

        .ff-container {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .header-section {
            display: flex;
            flex-direction: column;
            gap: 4px;
            padding-bottom: 16px;
            border-bottom: 1px solid var(--border-color);
        }

        .header-title {
            font-size: 18px;
            font-weight: 700;
            color: var(--text-main);
            margin: 0;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .header-subtitle {
            font-size: 12px;
            color: var(--text-secondary);
        }

        .card {
            background: var(--card-bg);
            border-radius: 12px;
            padding: 16px;
            border: 1px solid var(--border-color);
            box-shadow: 0 4px 12px rgba(0,0,0,0.2);
        }

        .section-title {
            font-size: 12px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            color: var(--secondary-color);
            margin-bottom: 16px;
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-size: 12px;
            font-weight: 500;
            color: var(--text-secondary);
        }

        .input-wrapper {
            position: relative;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }

        input[type="text"], select {
            width: 100%;
            padding: 12px;
            background: var(--input-bg);
            color: var(--text-main);
            border: 2px solid var(--border-color);
            border-radius: 8px;
            font-size: 13px;
            transition: border-color 0.3s, box-shadow 0.3s;
            outline: none;
        }

        input:focus, select:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 2px rgba(75, 57, 239, 0.2);
        }

        .btn {
            cursor: pointer;
            padding: 12px 20px;
            border-radius: 8px;
            font-weight: 600;
            font-size: 14px;
            transition: all 0.3s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            border: none;
            width: 100%;
        }

        .btn-primary {
            background: var(--primary-color);
            color: white;
            box-shadow: 0 4px 12px rgba(75, 57, 239, 0.3);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 16px rgba(75, 57, 239, 0.4);
        }

        .btn-secondary {
            background: transparent;
            color: var(--text-main);
            border: 2px solid var(--border-color);
            margin-top: 4px;
        }

        .btn-secondary:hover {
            background: var(--border-color);
        }

        .switch-container {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 12px;
            background: var(--input-bg);
            border-radius: 8px;
            border: 2px solid var(--border-color);
        }

        .switch-label {
            display: flex;
            flex-direction: column;
            gap: 2px;
        }

        .switch-title {
            font-size: 13px;
            font-weight: 600;
        }

        .switch-desc {
            font-size: 11px;
            color: var(--text-secondary);
        }

        /* Toggle Switch Style */
        .switch {
            position: relative;
            display: inline-block;
            width: 44px;
            height: 24px;
        }

        .switch input { opacity: 0; width: 0; height: 0; }

        .slider {
            position: absolute;
            cursor: pointer;
            top: 0; left: 0; right: 0; bottom: 0;
            background-color: var(--border-color);
            transition: .4s;
            border-radius: 24px;
        }

        .slider:before {
            position: absolute;
            content: "";
            height: 18px; width: 18px;
            left: 3px; bottom: 3px;
            background-color: white;
            transition: .4s;
            border-radius: 50%;
        }

        input:checked + .slider { background-color: var(--secondary-color); }
        input:checked + .slider:before { transform: translateX(20px); }

        .badge {
            background: rgba(57, 210, 192, 0.1);
            color: var(--secondary-color);
            padding: 4px 8px;
            border-radius: 6px;
            font-size: 10px;
            font-weight: 700;
        }

        .footer {
            margin-top: 12px;
            padding: 16px;
            text-align: center;
            font-size: 11px;
            color: var(--text-secondary);
            border-top: 1px solid var(--border-color);
        }

        .icon { width: 16px; height: 16px; fill: currentColor; }
    </style>
</head>
<body>
    <div class="ff-container">
        <div class="header-section">
            <h1 class="header-title">
                <svg class="icon" viewBox="0 0 24 24"><path d="M12 2L2 7L12 12L22 7L12 2Z" fill="var(--primary-color)"/><path d="M2 17L12 22L22 17M2 12L12 17L22 12" stroke="var(--primary-color)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg>
                Swagger Engine
                <span class="badge">v2.0.0</span>
            </h1>
            <p class="header-subtitle">Professional Clean Architecture Generator</p>
        </div>

        <div class="card">
            <div class="section-title">
                <svg class="icon" viewBox="0 0 24 24"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
                Configuration
            </div>

            <div class="form-group">
                <label>Swagger Source</label>
                <div class="input-wrapper">
                    <input type="text" id="inputPath" placeholder="swagger.json path">
                    <button class="btn btn-secondary" onclick="selectFile()">
                        <svg class="icon" viewBox="0 0 24 24"><path d="M22 19a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h5l2 3h9a2 2 0 0 1 2 2z"/></svg>
                        Browse File
                    </button>
                </div>
            </div>

            <div class="form-group">
                <label>Output Directory</label>
                <input type="text" id="outputDir" value="${workspaceFolder.replace(/\\/g, '\\\\')}" placeholder="Project root">
            </div>

            <div class="form-group">
                <label>Architecture Style</label>
                <select id="architecture">
                    <option value="feature">Feature-First (Clean)</option>
                    <option value="layer">Layer-First</option>
                    <option value="simple">Simple Modular</option>
                </select>
            </div>

            <div class="form-group">
                <div class="switch-container">
                    <div class="switch-label">
                        <span class="switch-title">Generate State</span>
                        <span class="switch-desc">Bloc, Cubit & Providers</span>
                    </div>
                    <label class="switch">
                        <input type="checkbox" id="generateBloc">
                        <span class="slider"></span>
                    </label>
                </div>
            </div>

            <button class="btn btn-primary" onclick="generate()">
                <svg class="icon" viewBox="0 0 24 24"><path d="M13 2L3 14h9l-1 8 10-12h-9l1-8z"/></svg>
                Generate Code
            </button>
        </div>

        <div class="footer">
            Design inspired by FlutterFlow • Built for Professionals
        </div>
    </div>

    <script>
        const vscode = acquireVsCodeApi();
        function selectFile() { vscode.postMessage({ command: 'selectFile' }); }
        function generate() {
            const config = {
                inputPath: document.getElementById('inputPath').value,
                outputDir: document.getElementById('outputDir').value,
                architecture: document.getElementById('architecture').value,
                generateBloc: document.getElementById('generateBloc').checked
            };
            vscode.postMessage({ command: 'generate', config });
        }
        window.addEventListener('message', event => {
            if (event.data.command === 'fileSelected') {
                document.getElementById('inputPath').value = event.data.path;
            }
        });
    </script>
</body>
</html>`;
	}
}

export function deactivate() {}
