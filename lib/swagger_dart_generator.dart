/// Swagger Dart Generator
///
/// A professional Dart code generator that creates complete Data Layer packages
/// for Flutter projects from Swagger/OpenAPI JSON files.
///
/// ## Usage
///
/// ```bash
/// dart pub global activate swagger_dart_generator
/// swagger_dart_generator --input swagger.json --output ./api_package
/// ```
///
/// ## Features
///
/// - Generates Clean Architecture structure
/// - Type-safe models with Equatable
/// - Repository and DataSource patterns
/// - Dio integration for HTTP
/// - Dartz Either for error handling
/// - Zero external build dependencies
library swagger_dart_generator;

// Core exports
export 'src/cli/argument_parser.dart';
export 'src/cli/cli_runner.dart';
export 'src/core/models/endpoint_model.dart';
export 'src/core/swagger_parser.dart';

// Generator exports
export 'src/generators/api/api_generator.dart';
export 'src/generators/datasource/datasource_generator.dart';
export 'src/generators/endpoints/endpoints_generator.dart';
export 'src/generators/failure/failure_generator.dart';
export 'src/generators/models/model_generator.dart';
export 'src/generators/pubspec/pubspec_generator.dart';
export 'src/generators/repository/repository_generator.dart';
export 'src/generators/test/test_generator.dart';

// Utils exports
export 'src/utils/dart_type_utils.dart';
export 'src/utils/string_utils.dart';
