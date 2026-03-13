# 🛠️ Commands Guide

This file contains all the commands you need to develop and run the **Swagger Dart Generator** project.

## 🎯 Dart Generator Development (Core)

| Command | Description |
| :--- | :--- |
| `dart pub get` | Download required Dart dependencies |
| `dart test` | Run all unit tests to ensure stability |
| `dart analyze` | Check code for errors or potential improvements |
| `dart format .` | Automatically format all Dart code |
| `dart run bin/swagger_dart_generator.dart` | Run the generator manually from source code |

---

## 🧩 VS Code Extension Development (TypeScript)

| Command | Description |
| :--- | :--- |
| `npm install` | Install Node.js dependencies and bundle the Dart code |
| `npm run compile` | Build the extension (TS -> JS) and sync the bundled Dart code |
| `npm run watch` | Continuously build the extension on code changes |
| `npx @vscode/vsce package` | Create the final `.vsix` installer for the extension |

---

## 🚀 Running the Generator (CLI)

If you are using the generator as a command-line tool:

```bash
# Start Interactive Mode (Guided Setup)
swagger_dart_generator

# Start Watch Mode (Auto-rebuild on swagger.json changes)
swagger_dart_generator -w

# Custom input and output directory
swagger_dart_generator -i swagger.json -o ./generated_api
```

---

## 📁 Project Structure

- `lib/`: Core generator logic (Dart).
- `src/`: VS Code extension source code (TypeScript).
- `bundle/`: Self-contained Dart engine used by the extension (auto-synced on compile).
- `test/`: Unit tests for the Dart generator.

---

> **Pro Tip**: Always run `npm run compile` after modifying any Dart code in `lib/` to ensure the changes are synced to the VS Code extension.
