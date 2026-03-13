# Changelog

All notable changes to this project will be documented in this file.

## [2.0.0] - 2025-03-13

### Added
- **VS Code Extension**: Launched the official VS Code extension with a professional sidebar dashboard.
- **Activity Bar Integration**: Added a dedicated icon in the VS Code sidebar for easy access to the generator.
- **Webview Dashboard**: Interactive UI to configure input paths, output directories, and architecture patterns.
- **Monorepo Restructuring**: Unified the Dart generator and VS Code extension into a single, high-performance codebase.
- **Self-contained Bundling**: The extension now includes its own Dart engine, eliminating the need for `pub global activate`.
- **CI/CD Pipeline**: Integrated GitHub Actions for automated testing and releases.
- **Mock Generator**: Added support for generating mock data sources for testing.
- **OAuth2 Support**: Built-in Bearer Token authentication interceptors.
- **Multipart Support**: Native support for file uploads (`MultipartFile` and `FormData`).
- **Interactive CLI**: Added a guided setup mode for the command-line tool.
- **Watch Mode**: Real-time code re-generation when `swagger.json` changes.

### Fixed
- Improved extension packaging: Reduced `.vsix` size from 16MB to ~1.2MB (92% reduction).
- Fixed `command not found` errors in the extension by using an internal bundled script.
- Enhanced path detection: The extension now automatically detects and uses the active workspace folder.

### Documentation
- Added `COMMANDS.md` for easy reference of development commands.
- Updated `README.md` and `ROADMAP.md` with the latest project vision.
- Added `AGENTS.md` for AI-assisted development context.

---

## [1.0.0] - Initial Release
- Basic Swagger to Dart generation.
- Support for Models and Repositories.
- Initial CLI tool.
