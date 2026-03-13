/// Swagger Dart Generator v2.0.0
///
/// A professional Dart code generator that creates complete Clean Architecture
/// packages for Flutter projects from Swagger/OpenAPI JSON files.
///
/// ## Usage
///
/// ```bash
/// dart pub global activate swagger_dart_generator
/// swagger_dart_generator generate --input swagger.json --output ./api_package --architecture feature-first
/// ```
///
/// ## Architecture Styles
///
/// - `feature-first`: lib/features/{feature}/domain/ & data/
/// - `layer-first`: lib/domain/ & lib/data/
/// - `simple`: lib/repositories/, lib/models/
///
/// ## Features
///
/// - Model extends Entity (inheritance pattern)
/// - Request class with UseCase (single file)
/// - Equatable for value equality
/// - Dio integration for HTTP
/// - Dartz Either for error handling
/// - Zero external build dependencies
library swagger_dart_generator;

// Core exports
export 'src/cli/argument_parser.dart';
export 'src/cli/cli_runner.dart';
export 'src/core/models/architecture_style.dart';
export 'src/core/models/endpoint_model.dart';
export 'src/core/swagger_parser.dart';

// Generator exports
export 'src/generators/api_generator.dart';
export 'src/generators/auth_generator.dart';
export 'src/generators/data/datasource_impl_generator.dart';
export 'src/generators/data/models/models_generator.dart';
export 'src/generators/data/repository_impl_generator.dart';
export 'src/generators/domain/entities_generator.dart';
export 'src/generators/domain/repository_interface_generator.dart';
export 'src/generators/domain/usecases_generator.dart';
export 'src/generators/endpoints_generator.dart';
export 'src/generators/failure_generator.dart';
export 'src/generators/data/models/entity_builder.dart';
export 'src/generators/data/models/model_builder.dart';
export 'src/generators/pubspec_generator.dart';
export 'src/generators/test_generator.dart';

// Utils exports
export 'src/utils/dart_type_utils.dart';
export 'src/utils/string_utils.dart';
