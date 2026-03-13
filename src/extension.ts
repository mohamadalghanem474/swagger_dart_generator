import * as vscode from 'vscode';
import * as cp from 'child_process';
import * as path from 'path';

function getGeneratorCommand(context: vscode.ExtensionContext): string {
	const extensionPath = context.extensionPath;
	const generatorPath = path.join(extensionPath, 'bundle', 'bin', 'swagger_dart_generator.dart');
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

		const terminal = vscode.window.createTerminal('Swagger Dart Watch');
		const baseCommand = getGeneratorCommand(context);
		
		terminal.show();
		terminal.sendText(`${baseCommand} -i "${filePath}" --watch`);
		vscode.window.showInformationMessage('Watch mode started in terminal.');
	});

	context.subscriptions.push(openUiCmd, generateCmd, watchCmd);
}

function runGeneration(context: vscode.ExtensionContext, filePath: string, options: any = {}) {
	// 1. Detect the workspace folder where the file belongs, or use the first workspace folder
	const workspaceFolder = vscode.workspace.getWorkspaceFolder(vscode.Uri.file(filePath)) || vscode.workspace.workspaceFolders?.[0];
	
	// 2. Determine the CWD (Current Working Directory) for the execution
	// If no workspace is open, use the directory of the swagger.json file
	const cwd = workspaceFolder ? workspaceFolder.uri.fsPath : path.dirname(filePath);
	
	// 3. Determine the output directory
	// If the user didn't provide one, use the workspace root (cwd)
	const outputDir = options.outputDir || cwd;

	const baseCommand = getGeneratorCommand(context);

	let command = `${baseCommand} -i "${filePath}"`;
	if (options.architecture) command += ` -a ${options.architecture}`;
	if (options.generateBloc) command += ` --bloc`;
	command += ` -o "${outputDir}"`;

	vscode.window.withProgress({
		location: vscode.ProgressLocation.Notification,
		title: `Swagger Dart: Generating Code in ${path.basename(outputDir)}...`,
		cancellable: false
	}, (progress) => {
		return new Promise((resolve, reject) => {
			cp.exec(command, { cwd }, (error, stdout, stderr) => {
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
        body { font-family: var(--vscode-font-family); color: var(--vscode-foreground); padding: 10px; font-size: 13px; }
        .container { width: 100%; }
        h2 { font-size: 14px; margin-bottom: 15px; border-bottom: 1px solid var(--vscode-widget-border); padding-bottom: 5px; }
        .form-group { margin-bottom: 12px; }
        label { display: block; margin-bottom: 4px; font-size: 11px; color: var(--vscode-descriptionForeground); }
        input[type="text"], select { width: 100%; padding: 6px; background: var(--vscode-input-background); color: var(--vscode-input-foreground); border: 1px solid var(--vscode-input-border); border-radius: 2px; }
        .btn-primary { background: var(--vscode-button-background); color: var(--vscode-button-foreground); width: 100%; padding: 8px; margin-top: 10px; border: none; cursor: pointer; font-weight: bold; }
        .btn-primary:hover { background: var(--vscode-button-hoverBackground); }
        .btn-secondary { background: var(--vscode-button-secondaryBackground); color: var(--vscode-button-secondaryForeground); padding: 4px 8px; border: none; cursor: pointer; margin-top: 4px; float: right; }
        .checkbox-group { display: flex; align-items: center; gap: 5px; margin-top: 10px; }
        .footer { margin-top: 20px; font-size: 10px; text-align: center; color: var(--vscode-descriptionForeground); }
    </style>
</head>
<body>
    <div class="container">
        <h2>Swagger Generator</h2>
        
        <div class="form-group">
            <label>Swagger JSON</label>
            <input type="text" id="inputPath" placeholder="Path to swagger.json">
            <button class="btn-secondary" onclick="selectFile()">Browse</button>
        </div>

        <div class="form-group" style="clear: both; padding-top: 10px;">
            <label>Output Dir</label>
            <input type="text" id="outputDir" value="${workspaceFolder.replace(/\\/g, '\\\\')}" placeholder=".">
        </div>

        <div class="form-group">
            <label>Architecture</label>
            <select id="architecture">
                <option value="feature">Feature-First</option>
                <option value="layer">Layer-First</option>
                <option value="simple">Simple</option>
            </select>
        </div>

        <div class="checkbox-group">
            <input type="checkbox" id="generateBloc">
            <label for="generateBloc">Generate Bloc/Cubit</label>
        </div>

        <button class="btn-primary" onclick="generate()">🚀 Generate Code</button>

        <div class="footer">v2.0.0</div>
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
