# 🧬 Swagger Dart Generator

[![Pub Version](https://img.shields.io/pub/v/swagger_dart_generator.svg)](https://pub.dev/packages/swagger_dart_generator)
![Null Safety](https://img.shields.io/badge/null_safety-%E2%9C%85-green)
[![GitHub Stars](https://img.shields.io/github/stars/mohamadalghanem474/swagger_dart_generator?style=social)](https://github.com/mohamadalghanem474/swagger_dart_generator)

You run the generator once and you instantly get a package you can import in any Flutter / Dart project to call your backend.

## 💻 Installation

```bash
dart pub global activate swagger_dart_generator
```

## Usage

### Run the command with the path to your `swagger.json`. The tool will generate a Dart package structure

```bash
swagger_dart_generator
```

### CLI Options

```bash
swagger_dart_generator --help

Options:
-i, --input          Path to the Swagger/OpenAPI JSON file (default: swagger.json)
-o, --output         Output directory for the generated package (default: .)
-n, --name           Package name (defaults to output directory name)
-a, --architecture   Architecture pattern to use (default: feature-first)
    feature-first    Feature-First Clean Arch: Each feature has its own domain and data layers
    layer-first      Layer-First Clean Arch: Domain and data layers are global
    clean-mixed      Clean Mixed: Domain is shared globally, each feature has its own data layer
    simple           Simple (No Layers): Best for small apps/prototypes
-v, --verbose        Enable verbose logging
    --dry-run        Preview changes without writing files
-h, --help           Show this help message
```

### Architecture Styles

Choose the architecture pattern that best fits your project:

| Style | Structure | Best For |
|-------|-----------|----------|
| **feature-first** (default) | `lib/features/{feature}/{domain,data}/` | Medium to large apps, team collaboration |
| **layer-first** | `lib/domain/`, `lib/data/`, `lib/features/{feature}/usecases/` | Large enterprise apps, strict separation |
| **clean-mixed** | `lib/domain/` (shared) + `lib/features/{feature}/data/` | Balanced approach, shared domain logic |
| **simple** | `lib/{models,repositories,datasources}/` | Small apps, prototypes, quick MVPs |

#### Example: Using Different Architectures

```bash
# Feature-first (default) - best for scalable apps
swagger_dart_generator -i api.json -o my_package --architecture feature-first

# Layer-first - best for strict architectural boundaries
swagger_dart_generator -i api.json -o my_package --architecture layer-first

# Simple - best for quick prototypes
swagger_dart_generator -i api.json -o my_package --architecture simple
```

### Import and use in your app

```yaml
dependencies:
  example:
    path: example
    version: 1.0.0
```

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

## 📂 Generated Files Structure

### Feature-First Architecture (Default)

```
lib/
├── features/
│   └── {feature}/
│       ├── domain/
│       │   ├── entities/
│       │   ├── repositories/         # Interface + Implementation
│       │   └── usecases/
│       └── data/
│           ├── models/
│           │   ├── requests/
│           │   └── responses/
│           └── datasources/          # Interface + Implementation
├── end_points.dart
├── failure.dart
└── {package_name}.dart              # Main API class with DI
```

### Layer-First Architecture

```
lib/
├── domain/
│   ├── entities/
│   └── repositories/                # Interfaces only
├── data/
│   ├── models/{feature}/
│   ├── repositories/                # Implementations
│   └── datasources/
├── features/{feature}/
│   └── usecases/
└── {package_name}.dart
```

### Clean Mixed Architecture

```
lib/
├── domain/                          # Shared across features
│   ├── entities/
│   └── repositories/                # Interfaces only
├── features/{feature}/
│   └── data/
│       ├── models/
│       ├── repositories/            # Implementations
│       └── datasources/
└── {package_name}.dart
```

### Simple Architecture

```
lib/
├── models/
│   ├── requests/
│   └── responses/
├── repositories/                    # Interface + Implementation
├── datasources/                     # Interface + Implementation
└── {package_name}.dart
```

### **DataSource** Abstract

```dart
import 'package:dio/dio.dart';
import 'package:example/data/models/auth/requests/login_post_req.dart';
import 'package:example/data/models/auth/responses/login_post_res.dart';

abstract class AuthDataSource {
  Future<LoginPostRes> loginPost(LoginPostReq req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options});
}
```

### **DataSource** Implementation

```dart
import 'package:dio/dio.dart';
import 'package:example/data/datasources/auth/auth.dart';
import 'package:example/data/models/auth/requests/login_post_req.dart';
import 'package:example/data/models/auth/responses/login_post_res.dart';
import 'package:example/end_points.dart';

class AuthRemoteDataSourceImpl implements AuthDataSource {
  final Dio _dio;
  AuthRemoteDataSourceImpl(this._dio);

  @override
  Future<LoginPostRes> loginPost(LoginPostReq req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options}) async {
    String url = EndPoints.auth.loginPost;
    final result = await _dio.post(url, data: req.body?.toJson(), cancelToken: cancelToken, onReceiveProgress: onReceiveProgress, options: options);
    return LoginPostRes.fromJson(result.data);
  }
}

```

### **Model** Request

```json
{
  "body": {
    "email": "string",
    "password": "string"
  }
}
```

```dart
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'login_post_req.freezed.dart';
part 'login_post_req.g.dart';

LoginPostReq loginPostReqFromJsonString(String str) => LoginPostReq.fromJson(json.decode(str));

String loginPostReqToJsonString(LoginPostReq data) => json.encode(data.toJson());

@freezed
abstract class LoginPostReq with _$LoginPostReq {
  const factory LoginPostReq({
    @JsonKey(name: "body", includeIfNull: false) LoginPostReqBody? body,
}) = _LoginPostReq;

  factory LoginPostReq.fromJson(Map<String, dynamic> json) => _$LoginPostReqFromJson(json);
}


LoginPostReqBody loginPostReqBodyFromJsonString(String str) => LoginPostReqBody.fromJson(json.decode(str));

String loginPostReqBodyToJsonString(LoginPostReqBody data) => json.encode(data.toJson());

@freezed
abstract class LoginPostReqBody with _$LoginPostReqBody {
  const factory LoginPostReqBody({
    @JsonKey(name: "email", includeIfNull: false) String? email,
    @JsonKey(name: "password", includeIfNull: false) String? password,
}) = _LoginPostReqBody;

  factory LoginPostReqBody.fromJson(Map<String, dynamic> json) => _$LoginPostReqBodyFromJson(json);
}
```

### **Model** Response

```json
{
  "accessToken": "string",
  "refreshToken": "string",
  "expiresIn": 1
}
```

```dart
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'login_post_res.freezed.dart';
part 'login_post_res.g.dart';

LoginPostRes loginPostResFromJsonString(String str) => LoginPostRes.fromJson(json.decode(str));

String loginPostResToJsonString(LoginPostRes data) => json.encode(data.toJson());

@freezed
abstract class LoginPostRes with _$LoginPostRes {
  const factory LoginPostRes({
    @JsonKey(name: "accessToken", includeIfNull: false) String? accessToken,
    @JsonKey(name: "refreshToken", includeIfNull: false) String? refreshToken,
    @JsonKey(name: "expiresIn", includeIfNull: false) int? expiresIn,
}) = _LoginPostRes;

  factory LoginPostRes.fromJson(Map<String, dynamic> json) => _$LoginPostResFromJson(json);
}
```

### **Repository** Abstract

```dart
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:example/failure.dart';
import 'package:example/data/models/auth/requests/login_post_req.dart';
import 'package:example/data/models/auth/responses/login_post_res.dart';

abstract class AuthRepository {
  Future<Either<FailureDetails, LoginPostRes>> loginPost(LoginPostReq req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options});
}
```

### **Repository** Implementation

```dart
import 'package:example/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:example/data/repositories/auth/auth.dart';
import 'package:example/data/datasources/auth/auth.dart';
import 'package:example/data/models/auth/requests/login_post_req.dart';
import 'package:example/data/models/auth/responses/login_post_res.dart';

class AuthRepositoryImpl implements AuthRepository {
  final Failure failure;
  final AuthDataSource _dataSource;

  AuthRepositoryImpl(this._dataSource, this.failure);

  @override
  Future<Either<FailureDetails, LoginPostRes>> loginPost(LoginPostReq req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options}) async {
    try {
      final result = await _dataSource.loginPost(req, cancelToken: cancelToken, onReceiveProgress: onReceiveProgress, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(failure.handle(e, stackTrace));
    }
  }

}
```

### **EndPoints**

```dart
class EndPoints {
  static const auth = _Auth();
  static const user = _User();
  static const product = _Product();
}

class _Auth {
  const _Auth();
  final String loginPost = "/auth/login";
}

class _User {
  const _User();
  final String userGet = "/user/{userId}";
}

class _Product {
  const _Product();
  final String productsGet = "/products";
  final String productsPost = "/products";
  final String productsDelete = "/products/{id}";
}
```

### **Failure**

```dart
abstract class Failure {
  const Failure();
  FailureDetails handle(dynamic e, StackTrace stackTrace);
}

class DefaultFailure extends Failure {
  const DefaultFailure();
  @override
  FailureDetails handle(dynamic e, StackTrace stackTrace) {
    return FailureDetails(message: e.toString(), stackTrace: stackTrace);
  }
}

class FailureDetails {
  final String message;
  final StackTrace stackTrace;
  final bool show;
  final Object? extra;
  const FailureDetails({required this.message, required this.stackTrace, this.show = true, this.extra});
}
```

## 🤝 Contributing

Pull requests, issues and feature‑requests are welcome!  
If you find bugs or want to support new features (e.g., caching, plugin support) open an issue.

## 📄 License

MIT © 2025 Mohamad Alghanem
