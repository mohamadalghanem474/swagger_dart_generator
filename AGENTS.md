# AGENTS.md - swagger_dart_generator

This file contains essential information for AI coding agents working on the `swagger_dart_generator` project.

## Project Overview

`swagger_dart_generator` is a Dart CLI tool that generates complete Data Layer packages for Flutter/Dart projects from Swagger/OpenAPI JSON files. It implements Clean Architecture patterns and generates code compatible with popular Dart packages like Dio, Dartz, and Freezed.

**Key Characteristics:**
- **Type**: Dart CLI executable package
- **Published**: Available on pub.dev
- **License**: MIT (2025 Mohamad Alghanem)
- **Current Version**: 1.2.1

## Technology Stack

### Runtime Dependencies
- `path: ^1.8.0` - File system path utilities

### Development Dependencies
- `lints: ^6.0.0` - Dart lint rules
- `test: ^1.21.0` - Testing framework

### Generated Package Dependencies
When the tool runs, it generates packages with these dependencies:
- **dio** - HTTP client for Dart
- **dartz** - Functional programming (Either type for error handling)
- **freezed_annotation** - Immutable data classes
- **freezed** - Code generation for data classes
- **json_serializable** - JSON serialization
- **build_runner** - Code generation runner
- **flutter_lints** - Linting rules
- **mg_tools** - DTO JSON to Dart class converter (external tool)

### SDK Requirements
- Dart SDK: `>=3.0.0 <4.0.0`

## Project Structure

```
swagger_dart_generator/
├── bin/
│   └── swagger_dart_generator.dart      # CLI entry point
├── lib/
│   ├── swagger_dart_generator.dart      # Library exports & main flow
│   ├── src/
│   │   ├── swagger_parser.dart          # Swagger/OpenAPI JSON parsing
│   │   ├── utils/
│   │   │   └── utils.dart               # String case converters
│   │   └── generators/
│   │       ├── api_generator.dart       # Main API class generation
│   │       ├── datasource_generator.dart # Data source layer
│   │       ├── endpoint_generator.dart  # Endpoint constants
│   │       ├── failure_generator.dart   # Error handling classes
│   │       ├── model_generator.dart     # DTO JSON file generation
│   │       ├── repository_generator.dart # Repository layer
│   │       └── test_generator.dart      # Integration test templates
├── screenshots/
│   └── logo.png                         # Package logo for pub.dev
├── pubspec.yaml                         # Package configuration
├── analysis_options.yaml                # Dart analyzer configuration
└── README.md                            # User documentation
```

## Build and Run Commands

### Install the CLI tool globally
```bash
dart pub global activate swagger_dart_generator
```

### Run the generator
```bash
# Must be run in a directory containing swagger.json
swagger_dart_generator
```

### Development commands
```bash
# Get dependencies
dart pub get

# Run static analysis
dart analyze

# Run tests
dart test

# Format code
dart format .

# Publish to pub.dev (maintainer only)
dart pub publish
```

## Code Style Guidelines

Configured in `analysis_options.yaml`:

```yaml
formatter:
  page_width: 300              # Maximum line length
  trailing_commas: preserve    # Keep existing trailing comma style

linter:
  rules:
    - always_use_package_imports    # Always use 'package:' imports
    - public_member_api_docs: true   # Require docs for public APIs
```

### Naming Conventions Used in Code Generation

The `Utils` class provides these case conversion methods:
- `toPascalCase()` - `auth_login` → `AuthLogin`
- `toLowerCamelCase()` - `auth_login` → `authLogin`
- `toSnakeCase()` - `AuthLogin` → `auth_login`
- `capitalize()` - `auth` → `Auth`

## Generated Package Architecture

The tool generates a Dart package following Clean Architecture principles:

### Directory Structure
```
generated_package/
├── lib/
│   ├── data/
│   │   ├── datasources/
│   │   │   └── {category}/
│   │   │       ├── {category}.dart                    # Abstract data source
│   │   │       └── {category}_remote_datasource_impl.dart
│   │   ├── models/
│   │   │   └── {category}/
│   │   │       ├── requests/
│   │   │       │   └── {endpoint}_req.dto.json        # Request DTO JSON
│   │   │       └── responses/
│   │   │           └── {endpoint}_res.dto.json        # Response DTO JSON
│   │   └── repositories/
│   │       └── {category}/
│   │           ├── {category}.dart                    # Abstract repository
│   │           └── {category}_repository_impl.dart
│   ├── {package_name}.dart                            # Main API class
│   ├── end_points.dart                                # API endpoint constants
│   └── failure.dart                                   # Error handling
└── test/
    └── {category}_test.dart                           # Integration tests
```

### Design Patterns

1. **Singleton Pattern**: API, Repository, and DataSource classes use singleton pattern
2. **Repository Pattern**: Abstract repositories with implementations
3. **Data Source Pattern**: Abstract data sources with remote implementations
4. **Either Pattern**: Uses `dartz` Either for error handling (Left=Failure, Right=Success)

### HTTP Method Support

Supports all standard HTTP methods:
- GET, POST, PUT, DELETE, PATCH, HEAD, OPTIONS

Method-specific parameter signatures:
- **DELETE**: `CancelToken? cancelToken, Options? options`
- **Others**: `CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options`

## Workflow

### Generation Flow

1. **Parse Phase** (`swagger_parser.dart`):
   - Reads `swagger.json` from current directory
   - Validates file existence
   - Creates Dart package structure via `dart create`
   - Adds required dependencies
   - Parses Swagger/OpenAPI (supports 2.0 and 3.x)
   - Extracts paths, methods, parameters, request bodies, responses
   - Outputs `swagger_clean.json` (intermediate format)

2. **Generation Phase** (in order):
   - `generateEndpoints()` - Creates `end_points.dart`
   - `generateModels()` - Creates DTO JSON files for mg_tools
   - `generateDatasources()` - Creates data source abstract classes and implementations
   - `generateRepositories()` - Creates repository abstract classes and implementations
   - `generateApi()` - Creates main API initialization class
   - `generateFailureClasses()` - Creates error handling classes
   - `generateIntegrationTests()` - Creates test templates

3. **Post-Processing**:
   - Runs `dart run mg_tools --replace` to convert DTO JSON files to Dart classes

### Input Requirements

The tool expects a `swagger.json` file in the current working directory. Supported formats:
- Swagger 2.0 (`definitions` for schemas)
- OpenAPI 3.x (`components/schemas` for schemas)

### Output Behavior

- Package name is derived from the current directory name
- If `lib/` directory exists, prompts user to confirm recreation
- Deletes default `example/`, `test/`, and `lib/` directories before generation

## Testing Strategy

### Project Tests
This project itself has minimal test coverage. Tests should be added to `test/` directory following Dart test conventions.

### Generated Package Tests
The tool generates integration test templates in `test/{category}_test.dart`:
- Uses `package:test` for testing
- Creates basic test cases for each endpoint
- Tests expect `result.isRight()` to be true
- Uses a mock base URL (`https://api.{package}.com`)

To run generated tests:
```bash
cd generated_package
dart pub get
dart test
```

## External Dependencies

### mg_tools Integration
This tool depends on `mg_tools` (a separate pub.dev package) for the final code generation step:
- Converts `.dto.json` files to Dart Freezed classes
- Must be installed as a dev dependency in generated packages
- Called automatically at the end of generation

## Security Considerations

1. **File System Access**: The tool reads `swagger.json` and writes files to the current directory
2. **Process Execution**: Executes `dart create`, `dart pub add`, and `dart run mg_tools`
3. **No Network Calls**: Does not make HTTP requests (except through generated code)
4. **Input Validation**: Checks for file existence but does not validate JSON schema

## Common Issues

1. **mg_tools not found**: Ensure `dart pub add --dev mg_tools` succeeds in generated package
2. **Swagger file not found**: Must have `swagger.json` in current working directory
3. **Permission errors**: May need write permissions to current directory
4. **Dependency conflicts**: Generated packages may have version conflicts with existing dependencies

## Development Notes

### Adding New Generators

1. Create new file in `lib/src/generators/`
2. Export from `lib/swagger_dart_generator.dart`
3. Call the generator function in `generateFromSwagger()`
4. Follow existing patterns for file output

### Modifying Generated Code

All code generation uses `StringBuffer` for building file contents. To modify generated code:
1. Locate the appropriate generator file
2. Modify the `StringBuffer` writing logic
3. Update version in `pubspec.yaml` and `CHANGELOG.md`

### Version Bump Checklist

1. Update `version:` in `pubspec.yaml`
2. Add entry to `CHANGELOG.md`
3. Ensure `README.md` is up to date
4. Run `dart analyze` to check for issues
5. Test generation with a sample swagger.json
6. Publish with `dart pub publish`
