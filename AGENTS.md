# AGENTS.md - swagger_dart_generator

This file contains essential information for AI coding agents working on the `swagger_dart_generator` project.

## Project Overview

`swagger_dart_generator` is a Dart CLI tool that generates complete Data Layer packages for Flutter/Dart projects from Swagger/OpenAPI JSON files. It implements Clean Architecture patterns and generates code compatible with popular Dart packages like Dio, Dartz, and Freezed.

**Key Characteristics:**
- **Type**: Dart CLI executable package + VS Code Extension
- **Published**: Available on pub.dev
- **License**: MIT (2025 Mohamad Alghanem)
- **Current Version**: 2.0.0

## Technology Stack

### Runtime Dependencies
- `path: ^1.9.0` - File system path utilities
- `args: ^2.4.2` - CLI argument parsing
- `code_builder: ^4.10.0` - Dart code generation
- `dart_style: ^2.3.6` - Dart code formatting
- `yaml: ^3.1.2` - YAML parsing
- `yaml_edit: ^2.2.1` - YAML editing

### Development Dependencies
- `lints: ^6.0.0` - Dart lint rules
- `test: ^1.25.0` - Testing framework

### Generated Package Dependencies
When the tool runs, it generates packages with these dependencies:
- **dio** - HTTP client for Dart
- **dartz** - Functional programming (Either type for error handling)
- **equatable** - Value equality without boilerplate
- **get_it** - Dependency injection
- **flutter_lints** - Linting rules

**Note: This tool generates "Vanilla Dart" code and does NOT depend on `build_runner`, `freezed`, or `json_serializable` for the generated package.**

### SDK Requirements
- Dart SDK: `>=3.0.0 <4.0.0`
- Node.js: `>=16.0.0` (for VS Code Extension)

## Project Structure (All-in-One)

```
swagger_dart_generator/
├── bin/                          # Dart CLI entry point
├── lib/                          # Dart generator logic
├── src/                          # VS Code extension code (TypeScript)
├── bundle/                       # Bundled generator (copy of bin/lib/pubspec)
├── media/                        # Extension icons/assets
├── out/                          # Compiled extension JavaScript
├── pubspec.yaml                  # Dart package configuration
├── package.json                  # VS Code extension configuration
├── tsconfig.json                 # TypeScript configuration
├── analysis_options.yaml         # Dart analyzer configuration
└── README.md                     # User documentation
```

## Build and Run Commands

### Development commands
```bash
# Get Dart dependencies
dart pub get

# Build the VS Code extension
npm run compile

# Package the extension (.vsix)
npx @vscode/vsce package

# Run tests
dart test
```
