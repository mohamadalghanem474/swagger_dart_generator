# Swagger Dart Generator 🎯

A powerful command-line tool that generates a complete, clean **Dart package** structure for API consumption directly from a **Swagger/OpenAPI JSON file**. It enforces modern architecture patterns (DataSources/Repositories/Singletons).

---

## ✨ Features

* **Clean Architecture:** Generates the data layer components (DataSources, Repositories) for maintainability.
* **Singleton Pattern:** Creates a central (`<package_name>`capital )container (`<package_name>.dart`) using lazy singletons for easy, managed access to all generated services.
* **Model Generation:** Creates Dart classes for API **Request** and **Response** models.
* **Testing:** Generates ready-to-use **Integration Tests** for all endpoints.
* **Dependencies:** Automatically configures dependencies (`dio`, `dartz`, `freezed`, `build_runner`, etc.).

---

## 💻 Installation

Install the package globally using the Dart package manager. This makes the `swagger_dart_generator` command available anywhere on your system.

```bash
dart pub global activate swagger_dart_generator
```

## Usage

Run the command with the path to your Swagger/OpenAPI JSON file as an argument. The tool will generate a Dart package structure in the specified directory.

```bash
swagger_dart_generator
```

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!