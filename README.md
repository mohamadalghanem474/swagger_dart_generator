# 🧬 Swagger Dart Generator

[![Pub Version](https://img.shields.io/pub/v/swagger_dart_generator.svg)](https://pub.dev/packages/swagger_dart_generator)
![Null Safety](https://img.shields.io/badge/null_safety-%E2%9C%85-green)
[![GitHub Stars](https://img.shields.io/github/stars/mohamadalghanem474/swagger_dart_generator?style=social)](https://github.com/mohamadalghanem474/swagger_dart_generator)

You run the generator once and you instantly get a package you can import in any Flutter / Dart project to call your backend.

---

## ✨ Features

* **Clean Architecture:** Generates the data layer components (DataSources, Repositories, Models) for maintainability.
* **Singleton Pattern:** Creates a central (`<package_name>.dart`) using lazy singletons access to all generated, You can Custom this just not use `<package_name>`.init().
* **Model Generation:** Creates Dart classes for API **Request** and **Response** models You can update only dtos With `mg_tools` for gen Freezed DTOs from json.
* **Testing:** Generates ready-to-use **Integration Tests** for all endpoints With Singletons default.

---

## 💻 Installation

Install the package globally using the Dart package manager. This makes the `swagger_dart_generator` command available anywhere on your system.

```bash
dart pub global activate swagger_dart_generator
```

## Usage

Run the command with the path to your `swagger.json`. The tool will generate a Dart package structure.

```bash
swagger_dart_generator
```

---

## 🚀 Working with the Generated Package

Import and use in your app:

   ```dart
import 'package:dio/dio.dart';
import 'package:example/example.dart';
import 'package:example/data/models/auth/requests/authlogin_req.dart';

void main() async {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.example.com'));
  final api = Example.init(dio);
  final loginResult = await api.repository.auth.authlogin(AuthloginReq());
  loginResult.fold(
    (failure) => print('❌ ${failure.message}'),
    (success) => print('✅ Logged in: $success'),
  );
}
```

---

## 🧰 Dependencies Generated

```yaml
dependencies:
  dio:
  dartz:
  freezed_annotation:
  json_annotation:
  get_it:
  logger:

dev_dependencies:
  build_runner:
  freezed:
  json_serializable:
  mg_tools:
  test:
```

---

## 📂 Folder Structure Generated

```text
example
 ┣ .dart_tool
 ┃ ┣ pub
 ┃ ┃ ┗ bin
 ┃ ┃ ┃ ┗ mg_tools
 ┃ ┃ ┃ ┃ ┗ mg_tools.dart-3.9.2.snapshot
 ┃ ┣ package_config.json
 ┃ ┗ package_graph.json
 ┣ lib
 ┃ ┣ data
 ┃ ┃ ┣ datasources
 ┃ ┃ ┃ ┣ auth
 ┃ ┃ ┃ ┃ ┣ auth.dart
 ┃ ┃ ┃ ┃ ┗ auth_remote_datasource_impl.dart
 ┃ ┃ ┃ ┣ product
 ┃ ┃ ┃ ┃ ┣ product.dart
 ┃ ┃ ┃ ┃ ┗ product_remote_datasource_impl.dart
 ┃ ┃ ┃ ┗ user
 ┃ ┃ ┃ ┃ ┣ user.dart
 ┃ ┃ ┃ ┃ ┗ user_remote_datasource_impl.dart
 ┃ ┃ ┣ models
 ┃ ┃ ┃ ┣ auth
 ┃ ┃ ┃ ┃ ┣ requests
 ┃ ┃ ┃ ┃ ┃ ┣ auth_
 ┃ ┃ ┃ ┃ ┃ ┣ authlogin_req.dart
 ┃ ┃ ┃ ┃ ┃ ┣ authlogin_req.dto.json
 ┃ ┃ ┃ ┃ ┃ ┣ authlogin_req.freezed.dart
 ┃ ┃ ┃ ┃ ┃ ┗ authlogin_req.g.dart
 ┃ ┃ ┃ ┃ ┗ responses
 ┃ ┃ ┃ ┃ ┃ ┣ authlogin_res.dart
 ┃ ┃ ┃ ┃ ┃ ┣ authlogin_res.dto.json
 ┃ ┃ ┃ ┃ ┃ ┣ authlogin_res.freezed.dart
 ┃ ┃ ┃ ┃ ┃ ┗ authlogin_res.g.dart
 ┃ ┃ ┃ ┣ product
 ┃ ┃ ┃ ┃ ┣ requests
 ┃ ┃ ┃ ┃ ┃ ┣ products_req.dart
 ┃ ┃ ┃ ┃ ┃ ┣ products_req.dto.json
 ┃ ┃ ┃ ┃ ┃ ┣ products_req.freezed.dart
 ┃ ┃ ┃ ┃ ┃ ┣ products_req.g.dart
 ┃ ┃ ┃ ┃ ┃ ┣ productsid_req.dart
 ┃ ┃ ┃ ┃ ┃ ┣ productsid_req.dto.json
 ┃ ┃ ┃ ┃ ┃ ┣ productsid_req.freezed.dart
 ┃ ┃ ┃ ┃ ┃ ┗ productsid_req.g.dart
 ┃ ┃ ┃ ┃ ┗ responses
 ┃ ┃ ┃ ┃ ┃ ┣ products_res.dart
 ┃ ┃ ┃ ┃ ┃ ┣ products_res.dto.json
 ┃ ┃ ┃ ┃ ┃ ┣ products_res.freezed.dart
 ┃ ┃ ┃ ┃ ┃ ┣ products_res.g.dart
 ┃ ┃ ┃ ┃ ┃ ┣ productsid_res.dart
 ┃ ┃ ┃ ┃ ┃ ┣ productsid_res.dto.json
 ┃ ┃ ┃ ┃ ┃ ┣ productsid_res.freezed.dart
 ┃ ┃ ┃ ┃ ┃ ┗ productsid_res.g.dart
 ┃ ┃ ┃ ┗ user
 ┃ ┃ ┃ ┃ ┣ requests
 ┃ ┃ ┃ ┃ ┃ ┣ useruser_id_req.dart
 ┃ ┃ ┃ ┃ ┃ ┣ useruser_id_req.dto.json
 ┃ ┃ ┃ ┃ ┃ ┣ useruser_id_req.freezed.dart
 ┃ ┃ ┃ ┃ ┃ ┗ useruser_id_req.g.dart
 ┃ ┃ ┃ ┃ ┗ responses
 ┃ ┃ ┃ ┃ ┃ ┣ useruser_id_res.dart
 ┃ ┃ ┃ ┃ ┃ ┣ useruser_id_res.dto.json
 ┃ ┃ ┃ ┃ ┃ ┣ useruser_id_res.freezed.dart
 ┃ ┃ ┃ ┃ ┃ ┗ useruser_id_res.g.dart
 ┃ ┃ ┗ repositories
 ┃ ┃ ┃ ┣ auth
 ┃ ┃ ┃ ┃ ┣ auth.dart
 ┃ ┃ ┃ ┃ ┗ auth_repository_impl.dart
 ┃ ┃ ┃ ┣ product
 ┃ ┃ ┃ ┃ ┣ product.dart
 ┃ ┃ ┃ ┃ ┗ product_repository_impl.dart
 ┃ ┃ ┃ ┗ user
 ┃ ┃ ┃ ┃ ┣ user.dart
 ┃ ┃ ┃ ┃ ┗ user_repository_impl.dart
 ┃ ┣ end_points.dart
 ┃ ┣ example.dart
 ┃ ┗ failure.dart
 ┣ test
 ┃ ┣ auth_test.dart
 ┃ ┣ product_test.dart
 ┃ ┗ user_test.dart
 ┣ .gitignore
 ┣ CHANGELOG.md
 ┣ README.md
 ┣ analysis_options.yaml
 ┣ pubspec.lock
 ┣ pubspec.yaml
 ┗ swagger.json
```

---

## 🤝 Contributing

Pull requests, issues and feature‑requests are welcome!  
If you find bugs or want to support new features (e.g., custom headers, caching, plugin support) open an issue.

---

## 📄 License

MIT © 2025 Mohamad Alghanem
