# 🗺️ Swagger Dart Generator Roadmap

This roadmap outlines the future plans and vision for the `swagger_dart_generator` project. Our goal is to provide the most professional, clean, and developer-friendly code generator for Flutter and Dart.

## 🎯 Core Principles
- **No `build_runner`**: All generated code is "Vanilla Dart". No need to run code generation in the generated package.
- **Clean Architecture**: Strict separation of layers (Domain, Data).
- **Zero Boilerplate**: Automate everything from models to repositories.

---

## 🚀 Current Status (v2.0.0)

- [x] **Full Clean Architecture Support**: Generates code with clear separation of concerns (Domain, Data, Presentation layers).
- [x] **Advanced OpenAPI Parsing**: Compatible with Swagger 2.0 and OpenAPI 3.x.
- [x] **Dartz Integration**: Using `Either` pattern for robust error handling.
- [x] **Dio Integration**: Modern HTTP client support with interceptors and progress tracking.

---

## 🛠 Short-term Goals (v2.1.0 - v2.3.0)

### 🧪 Stability & Testing
- [x] **Unit Tests for Generators**: Implement comprehensive tests for all code generation logic to ensure stability.
- [x] **Mock Generator**: Add support for generating mock data sources for easier testing in consuming apps.
- [x] **Enhanced Validation**: Enhanced validation for `swagger.json` files with clear error messages for invalid schemas.

### 🧩 Feature Enhancements
- [x] **OAuth2 Support**: Built-in templates for common OAuth2 flows (Bearer).
- [x] **File Upload/Download**: Optimized support for multipart/form-data.
- [x] **Customizable Dio Options**: Allow users to pass custom `BaseOptions` and `Interceptors` during initialization more easily.

---

## 🌟 Medium-term Goals (v2.5.0)

### 🎨 Developer Experience (DX)
- [x] **CLI Interactive Mode**: A guided CLI experience to help users configure the generation process step-by-step.
- [x] **Configuration File**: Support for `swagger_generator.yaml` to save preferences and avoid long CLI commands.
- [x] **Watch Mode**: Automatically re-generate code when the `swagger.json` file changes.

### 🏗 Architecture Expansion
- [x] **Support for Bloc/Cubit Generation**: Optional generation of basic Bloc or Cubit classes for standard CRUD operations.
- [x] **Support for Riverpod**: Integration with Riverpod for dependency injection and state management.

---

## 🌈 Long-term Vision (v3.0.0+)

### 🌍 Ecosystem & Community
- [x] **VS Code Extension**: A dedicated extension for generating code directly from the IDE.
- [x] **Advanced Type Mapping**: Allow users to define custom type mappings (e.g., mapping a custom date format to a specific Dart class).
