import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import 'package:swagger_dart_generator/src/core/models/architecture_style.dart';
import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Generates domain use cases with inline request classes.
///
/// Output structure varies by architecture style:
/// - feature: lib/features/{feature}/domain/usecases/
/// - layer: lib/domain/usecases/{feature}/
/// - Simple: lib/usecases/
///
/// Each usecase file contains:
/// - Request class (extends Equatable) with copyWith, props, stringify
/// - UseCase class that calls the repository
class UsecasesGenerator {
  final String outputDir;
  final String packageName;
  final ArchitectureStyle architectureStyle;

  UsecasesGenerator({
    required this.outputDir,
    required this.packageName,
    required this.architectureStyle,
  });

  /// Generates use cases for all features.
  Future<void> generate(List<EndpointCategory> categories) async {
    for (final category in categories) {
      await _generateFeatureUsecases(category);
    }
  }

  /// Generates use cases for a single feature.
  Future<void> _generateFeatureUsecases(EndpointCategory category) async {
    final featureName = StringUtils.toSnakeCase(category.name);
    final usecasesDir = Directory(_getUsecasesPath(featureName));
    usecasesDir.createSync(recursive: true);

    for (final endpoint in category.endpoints) {
      await _generateUsecase(endpoint, category.name, featureName, usecasesDir);
    }
  }

  /// Gets the usecases directory path based on architecture style.
  String _getUsecasesPath(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => '$outputDir/lib/features/$featureName/domain/usecases',
      ArchitectureStyle.layerFirst => '$outputDir/lib/domain/usecases/$featureName',
      ArchitectureStyle.simple => '$outputDir/lib/usecases',
    };
  }

  /// Gets the repository import path based on architecture style.
  String _getRepositoryImport(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => 'package:$packageName/features/$featureName/domain/repositories/${featureName}_repository.dart',
      ArchitectureStyle.layerFirst => 'package:$packageName/domain/repositories/${featureName}_repository.dart',
      ArchitectureStyle.simple => 'package:$packageName/repositories/${featureName}_repository.dart',
    };
  }

  /// Gets the entity import path for a specific endpoint.
  String _getEntityImport(String featureName, String endpointName) {
    final entityFileName = '${StringUtils.toSnakeCase(endpointName)}_entity.dart';
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => 'package:$packageName/features/$featureName/domain/entities/$entityFileName',
      ArchitectureStyle.layerFirst => 'package:$packageName/domain/entities/$featureName/$entityFileName',
      ArchitectureStyle.simple => 'package:$packageName/models/$featureName/responses/${featureName}_${entityFileName.replaceAll('_entity', '_res')}',
    };
  }

  /// Generates a single use case file containing both Request class and UseCase class.
  Future<void> _generateUsecase(
    EndpointModel endpoint,
    String categoryName,
    String featureName,
    Directory outputDir,
  ) async {
    final usecaseName = '${endpoint.methodName[0].toUpperCase()}${endpoint.methodName.substring(1)}Usecase';
    final fileName = '${StringUtils.toSnakeCase(endpoint.name)}_usecase.dart';
    final repoInterface = 'I${categoryName}Repository';

    // Build request properties
    final requestProperties = _buildRequestProperties(endpoint);
    final hasRequest = requestProperties.isNotEmpty;

    final library = Library((b) {
      // Imports
      b.directives.add(Directive.import('package:dartz/dartz.dart'));
      b.directives.add(Directive.import('package:dio/dio.dart'));
      b.directives.add(Directive.import('package:equatable/equatable.dart'));
      b.directives.add(Directive.import('package:meta/meta.dart'));
      b.directives.add(Directive.import('package:$packageName/failure.dart'));
      b.directives.add(Directive.import(_getRepositoryImport(featureName)));

      // Entity import if has response
      if (endpoint.hasResponseBody) {
        b.directives.add(Directive.import(
          _getEntityImport(featureName, endpoint.name),
        ));
      }

      // Request and UseCase classes
      if (hasRequest) {
        // Request class (extends Equatable)
        b.body.add(_buildRequestClass(endpoint, requestProperties));
      }

      // UseCase class
      b.body.add(_buildUsecaseClass(endpoint, usecaseName, repoInterface, hasRequest));
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();
    final formatter = DartFormatter();

    final file = File('${outputDir.path}/$fileName');
    await file.writeAsString(formatter.format(code));
  }

  /// Builds request properties from request body, query params, and path params.
  Map<String, dynamic> _buildRequestProperties(EndpointModel endpoint) {
    final properties = <String, dynamic>{};

    if (endpoint.requestBody != null) {
      properties.addAll(_flattenProperties(endpoint.requestBody!));
    }

    for (final param in endpoint.pathParams) {
      final fieldName = StringUtils.toLowerCamelCase(param.name);
      properties[fieldName] = _getDefaultValueForType(param.type);
    }

    for (final param in endpoint.queryParams) {
      final fieldName = StringUtils.toLowerCamelCase(param.name);
      properties[fieldName] = _getDefaultValueForType(param.type);
    }

    return properties;
  }

  /// Builds the Request class that extends Equatable.
  Class _buildRequestClass(EndpointModel endpoint, Map<String, dynamic> properties) {
    final className = endpoint.requestClassName;

    return Class((b) {
      b
        ..name = className
        ..extend = refer('Equatable')
        ..annotations.add(refer('immutable'));

      // Constructor
      b.constructors.add(Constructor((b) {
        b.constant = true;
        for (final entry in properties.entries) {
          b.optionalParameters.add(Parameter((b) {
            b
              ..name = entry.key
              ..named = true
              ..toThis = true;
          }));
        }
      }));

      // Fields
      for (final entry in properties.entries) {
        final fieldType = _inferType(entry.key, entry.value);
        b.fields.add(Field((b) {
          b
            ..name = entry.key
            ..type = refer(fieldType)
            ..modifier = FieldModifier.final$;
        }));
      }

      // toJson method
      b.methods.add(_buildToJsonMethod(properties));

      // copyWith method
      b.methods.add(_buildCopyWithMethod(className, properties));

      // props getter
      b.methods.add(_buildPropsGetter(properties));

      // stringify getter
      b.methods.add(_buildStringifyGetter());
    });
  }

  /// Builds the toJson method for Request class.
  Method _buildToJsonMethod(Map<String, dynamic> properties) {
    return Method((b) {
      b
        ..name = 'toJson'
        ..returns = refer('Map<String, dynamic>')
        ..body = Block((b) {
          final mapEntries = <Expression, Expression>{};
          for (final entry in properties.entries) {
            final fieldName = entry.key;
            mapEntries[literalString(fieldName)] = refer(fieldName);
          }
          b.addExpression(literalMap(mapEntries, refer('String'), refer('dynamic')).returned);
        });
    });
  }

  /// Builds the copyWith method for Request class.
  Method _buildCopyWithMethod(String className, Map<String, dynamic> properties) {
    return Method((b) {
      b
        ..name = 'copyWith'
        ..returns = refer(className)
        ..body = Block((b) {
          final args = <String, Expression>{};
          for (final entry in properties.entries) {
            final fieldName = entry.key;
            args[fieldName] = refer(fieldName).ifNullThen(refer('this.$fieldName'));
          }
          b.addExpression(refer(className).newInstance([], args).returned);
        });

      // Optional parameters
      for (final entry in properties.entries) {
        final fieldName = entry.key;
        final fieldType = _inferType(fieldName, entry.value);
        final baseType = fieldType.replaceAll('?', '');

        b.optionalParameters.add(Parameter((b) {
          b
            ..name = fieldName
            ..named = true
            ..type = refer('$baseType?');
        }));
      }
    });
  }

  /// Builds the props getter for Equatable.
  Method _buildPropsGetter(Map<String, dynamic> properties) {
    return Method((b) {
      b
        ..name = 'props'
        ..returns = refer('List<Object?>')
        ..type = MethodType.getter
        ..annotations.add(refer('override'))
        ..body = Block((b) {
          final fieldList = properties.keys.map((name) => refer(name)).toList();
          b.addExpression(literalList(fieldList).returned);
        });
    });
  }

  /// Builds the stringify getter for Equatable.
  Method _buildStringifyGetter() {
    return Method((b) {
      b
        ..name = 'stringify'
        ..returns = refer('bool')
        ..type = MethodType.getter
        ..annotations.add(refer('override'))
        ..body = Block((b) {
          b.addExpression(literalTrue.returned);
        });
    });
  }

  /// Builds the UseCase class.
  Class _buildUsecaseClass(EndpointModel endpoint, String usecaseName, String repoInterface, bool hasRequest) {
    return Class((b) {
      b
        ..name = usecaseName
        ..fields.add(Field((b) {
          b
            ..name = '_repository'
            ..type = refer(repoInterface)
            ..modifier = FieldModifier.final$;
        }));

      // Constructor
      b.constructors.add(Constructor((b) {
        b.requiredParameters.add(Parameter((b) {
          b
            ..name = '_repository'
            ..toThis = true;
        }));
      }));

      // Call method
      final returnType = endpoint.hasResponseBody ? 'Future<Either<FailureDetails, ${endpoint.entityClassName}>>' : 'Future<Either<FailureDetails, void>>';

      b.methods.add(Method((b) {
        b
          ..name = 'call'
          ..returns = refer(returnType)
          ..modifier = MethodModifier.async;

        // Request parameter
        if (hasRequest) {
          b.requiredParameters.add(Parameter((b) {
            b
              ..name = 'req'
              ..type = refer(endpoint.requestClassName);
          }));
        }

        // Optional parameters
        b.optionalParameters.addAll([
          _buildOptionalParam('cancelToken', 'CancelToken?'),
          _buildOptionalParam('options', 'Options?'),
        ]);

        // Body
        final args = <Expression>[];
        if (hasRequest) {
          args.add(refer('req'));
        }

        final namedArgs = <String, Expression>{
          'cancelToken': refer('cancelToken'),
          'options': refer('options'),
        };

        b.body = refer('_repository').property(endpoint.methodName).call(args, namedArgs).awaited.returned.statement;
      }));
    });
  }

  /// Builds an optional parameter.
  Parameter _buildOptionalParam(String name, String type) {
    return Parameter((b) {
      b
        ..name = name
        ..named = true
        ..type = refer(type);
    });
  }

  /// Flattens nested properties for request generation.
  Map<String, dynamic> _flattenProperties(Map<String, dynamic> data) {
    final result = <String, dynamic>{};

    data.forEach((key, value) {
      if (value is Map<String, dynamic>) {
        final hasNested = value.values.any((v) => v is Map || v is List);
        if (hasNested) {
          result[key] = StringUtils.toPascalCase(key);
        } else {
          result[key] = value;
        }
      } else if (value is List && value.isNotEmpty && value.first is Map) {
        result[key] = ['${StringUtils.toPascalCase(key)}Item'];
      } else {
        result[key] = value;
      }
    });

    return result;
  }

  /// Gets a default value for a given type.
  dynamic _getDefaultValueForType(String type) {
    final baseType = type.replaceAll('?', '');
    return switch (baseType) {
      'String' => 'string',
      'int' => 0,
      'double' => 0.0,
      'bool' => false,
      'List<dynamic>' => [],
      'Map<String, dynamic>' => {},
      _ => 'string',
    };
  }

  /// Infers the Dart type from a property value.
  String _inferType(String name, dynamic value) {
    if (value == null) return 'dynamic?';

    if (value is String) {
      if (name.toLowerCase().contains('date') || name.toLowerCase().contains('time')) {
        return 'DateTime?';
      }
      return 'String?';
    }

    if (value is int) return 'int?';
    if (value is double) return 'double?';
    if (value is bool) return 'bool?';

    if (value is List) {
      if (value.isEmpty) return 'List<dynamic>?';
      final itemType = _inferType('item', value.first);
      return 'List<${itemType.replaceAll('?', '')}>?';
    }

    if (value is Map) {
      final hasNestedObjects = value.values.any((v) => v is Map || v is List);
      if (!hasNestedObjects) {
        return 'Map<String, dynamic>?';
      }
      final nestedClassName = StringUtils.toPascalCase(name);
      return '$nestedClassName?';
    }

    return 'dynamic?';
  }
}
