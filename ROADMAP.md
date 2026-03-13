# 🗺️ Swagger Dart Generator Roadmap

This roadmap outlines the future plans and vision for the `swagger_dart_generator` project. Our goal is to provide the most professional, clean, and developer-friendly code generator for Flutter and Dart.

---

## 🚀 Current Status (v2.0.0)

- [x] **Full Clean Architecture Support**: Generates code with clear separation of concerns (Domain, Data, Presentation layers).
- [x] **Multiple Architecture Styles**: Support for `feature`, `layer`, `clean-mixed`, and `simple` patterns.
- [x] **Advanced OpenAPI Parsing**: Compatible with Swagger 2.0 and OpenAPI 3.x.
- [x] **Dartz Integration**: Using `Either` pattern for robust error handling.
- [x] **Freezed & JSON Serializable**: Built-in support for immutable data classes and serialization.
- [x] **Dio Integration**: Modern HTTP client support with interceptors and progress tracking.

---

## 🛠 Short-term Goals (v2.1.0 - v2.3.0)

### 🧪 Stability & Testing
- [ ] **Unit Tests for Generators**: Implement comprehensive tests for all code generation logic to ensure stability.
- [ ] **Mock Generator**: Add support for generating mock data sources for easier testing in consuming apps.
- [ ] **Better Validation**: Enhanced validation for `swagger.json` files with clear error messages for invalid schemas.

### 🧩 Feature Enhancements
- [ ] **OAuth2 Support**: Built-in templates for common OAuth2 flows (Bearer, Refresh Token).
- [ ] **File Upload/Download**: Optimized support for multipart/form-data and binary streams.
- [ ] **Customizable Dio Options**: Allow users to pass custom `BaseOptions` and `Interceptors` during initialization more easily.

---

## 🌟 Medium-term Goals (v2.5.0)

### 🎨 Developer Experience (DX)
- [ ] **CLI Interactive Mode**: A guided CLI experience to help users configure the generation process step-by-step.
- [ ] **Configuration File**: Support for `swagger_generator.yaml` to save preferences and avoid long CLI commands.
- [ ] **Watch Mode**: Automatically re-generate code when the `swagger.json` file changes.

### 🏗 Architecture Expansion
- [ ] **Support for Bloc/Cubit Generation**: Optional generation of basic Bloc or Cubit classes for standard CRUD operations.
---

## 🌈 Long-term Vision (v3.0.0+)

### 🌍 Ecosystem & Community
- [ ] **VS Code Extension**: A dedicated extension for generating code directly from the IDE.
- [ ] **Support for Other Languages**: Explore the possibility of supporting other languages like Kotlin or Swift while maintaining the same Clean Architecture principles.
- [ ] **Advanced Type Mapping**: Allow users to define custom type mappings (e.g., mapping a custom date format to a specific Dart class).

---

## 🤝 How to Contribute

We welcome contributions! If you're interested in helping with any of the items on this roadmap, please:

1. Check the [Issues](https://github.com/mohamadalghanem474/swagger_dart_generator/issues) for any open tasks.
2. Fork the repository and create a new branch.
3. Submit a Pull Request with a clear description of your changes.

Together, we can build the best code generation tool for the Flutter community! 🚀
