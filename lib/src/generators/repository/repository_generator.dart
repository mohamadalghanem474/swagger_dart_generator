import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Generates repository classes (abstract and implementation).
class RepositoryGenerator {
  final String outputDir;
  final String packageName;

  RepositoryGenerator({
    required this.outputDir,
    required this.packageName,
  });

  /// Generates all repository files.
  Future<void> generate(List<EndpointCategory> categories) async {
    final baseDir = Directory('$outputDir/lib/data/repositories');
    if (!baseDir.existsSync()) {
      baseDir.createSync(recursive: true);
    }

    for (final category in categories) {
      await _generateCategoryRepository(category, baseDir);
    }
  }

  /// Generates repository for a single category.
  Future<void> _generateCategoryRepository(
    EndpointCategory category,
    Directory baseDir,
  ) async {
    final categoryName = StringUtils.toSnakeCase(category.name);
    final categoryDir = Directory('${baseDir.path}/$categoryName');
    categoryDir.createSync(recursive: true);

    // Generate abstract class
    await _generateAbstractClass(category, categoryDir, categoryName);

    // Generate implementation
    await _generateImplementation(category, categoryDir, categoryName);
  }

  /// Generates the abstract repository class.
  Future<void> _generateAbstractClass(
    EndpointCategory category,
    Directory outputDir,
    String fileName,
  ) async {
    final className = '${category.name}Repository';
    final library = Library((b) {
      // Imports
      b.directives.add(Directive.import('package:dartz/dartz.dart'));
      b.directives.add(Directive.import('package:dio/dio.dart'));
      b.directives.add(Directive.import('package:$packageName/failure.dart'));

      // Model imports
      for (final endpoint in category.endpoints) {
        if (endpoint.hasRequestBody || endpoint.queryParams.isNotEmpty || endpoint.pathParams.isNotEmpty) {
          b.directives.add(Directive.import(
            'package:$packageName/data/models/$fileName/requests/${StringUtils.toSnakeCase(endpoint.name)}_req.dart',
          ));
        }
        if (endpoint.hasResponseBody) {
          b.directives.add(Directive.import(
            'package:$packageName/data/models/$fileName/responses/${StringUtils.toSnakeCase(endpoint.name)}_res.dart',
          ));
        }
      }

      // Abstract class
      b.body.add(Class((b) {
        b
          ..abstract = true
          ..name = className;

        for (final endpoint in category.endpoints) {
          b.methods.add(_buildAbstractMethod(endpoint));
        }
      }));
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();
    final formatter = DartFormatter();

    final file = File('${outputDir.path}/$fileName.dart');
    await file.writeAsString(formatter.format(code));
  }

  /// Generates the implementation class.
  Future<void> _generateImplementation(
    EndpointCategory category,
    Directory outputDir,
    String fileName,
  ) async {
    final abstractClassName = '${category.name}Repository';
    final implClassName = '${category.name}RepositoryImpl';
    final datasourceName = '${category.name}DataSource';

    final library = Library((b) {
      // Imports
      b.directives.add(Directive.import('package:$packageName/failure.dart'));
      b.directives.add(Directive.import('package:dartz/dartz.dart'));
      b.directives.add(Directive.import('package:dio/dio.dart'));
      b.directives.add(Directive.import('package:$packageName/data/repositories/$fileName/$fileName.dart'));
      b.directives.add(Directive.import('package:$packageName/data/datasources/$fileName/$fileName.dart'));

      // Model imports
      for (final endpoint in category.endpoints) {
        if (endpoint.hasRequestBody || endpoint.queryParams.isNotEmpty || endpoint.pathParams.isNotEmpty) {
          b.directives.add(Directive.import(
            'package:$packageName/data/models/$fileName/requests/${StringUtils.toSnakeCase(endpoint.name)}_req.dart',
          ));
        }
        if (endpoint.hasResponseBody) {
          b.directives.add(Directive.import(
            'package:$packageName/data/models/$fileName/responses/${StringUtils.toSnakeCase(endpoint.name)}_res.dart',
          ));
        }
      }

      // Implementation class
      b.body.add(Class((b) {
        b
          ..name = implClassName
          ..implements.add(refer(abstractClassName));

        // Constructor
        b.constructors.add(Constructor((b) {
          b.requiredParameters.addAll([
            Parameter((b) {
              b
                ..name = '_dataSource'
                ..toThis = true;
            }),
            Parameter((b) {
              b
                ..name = '_failure'
                ..toThis = true;
            }),
          ]);
        }));

        // Fields
        b.fields.addAll([
          Field((b) {
            b
              ..name = '_dataSource'
              ..type = refer(datasourceName)
              ..modifier = FieldModifier.final$;
          }),
          Field((b) {
            b
              ..name = '_failure'
              ..type = refer('Failure')
              ..modifier = FieldModifier.final$;
          }),
        ]);

        // Methods
        for (final endpoint in category.endpoints) {
          b.methods.add(_buildImplementationMethod(endpoint));
        }
      }));
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();
    final formatter = DartFormatter();

    final file = File('${outputDir.path}/${fileName}_repository_impl.dart');
    await file.writeAsString(formatter.format(code));
  }

  /// Builds an abstract method definition.
  Method _buildAbstractMethod(EndpointModel endpoint) {
    final returnType = endpoint.hasResponseBody ? 'Future<Either<FailureDetails, ${endpoint.responseClassName}>>' : 'Future<Either<FailureDetails, void>>';

    final builder = MethodBuilder()
      ..name = endpoint.methodName
      ..returns = refer(returnType);

    // Request parameter
    if (endpoint.hasRequestBody || endpoint.queryParams.isNotEmpty || endpoint.pathParams.isNotEmpty) {
      builder.requiredParameters.add(Parameter((b) {
        b
          ..name = 'req'
          ..type = refer(endpoint.requestClassName);
      }));
    }

    // Optional parameters
    if (endpoint.isDelete) {
      builder.optionalParameters.addAll([
        _buildOptionalParam('cancelToken', 'CancelToken?'),
        _buildOptionalParam('options', 'Options?'),
      ]);
    } else {
      builder.optionalParameters.addAll([
        _buildOptionalParam('cancelToken', 'CancelToken?'),
        _buildOptionalParam('onReceiveProgress', 'void Function(int, int)?'),
        _buildOptionalParam('options', 'Options?'),
      ]);
    }

    return builder.build();
  }

  /// Builds an implementation method.
  Method _buildImplementationMethod(EndpointModel endpoint) {
    final returnType = endpoint.hasResponseBody ? 'Future<Either<FailureDetails, ${endpoint.responseClassName}>>' : 'Future<Either<FailureDetails, void>>';

    return Method((b) {
      b
        ..name = endpoint.methodName
        ..returns = refer(returnType)
        ..annotations.add(refer('override'))
        ..modifier = MethodModifier.async;

      // Request parameter
      if (endpoint.hasRequestBody || endpoint.queryParams.isNotEmpty || endpoint.pathParams.isNotEmpty) {
        b.requiredParameters.add(Parameter((b) {
          b
            ..name = 'req'
            ..type = refer(endpoint.requestClassName);
        }));
      }

      // Optional parameters
      if (endpoint.isDelete) {
        b.optionalParameters.addAll([
          _buildOptionalParam('cancelToken', 'CancelToken?'),
          _buildOptionalParam('options', 'Options?'),
        ]);
      } else {
        b.optionalParameters.addAll([
          _buildOptionalParam('cancelToken', 'CancelToken?'),
          _buildOptionalParam('onReceiveProgress', 'void Function(int, int)?'),
          _buildOptionalParam('options', 'Options?'),
        ]);
      }

      // Body with try-catch
      b.body = Block((b) {
        b.addExpression(
          refer('tryCatch<${endpoint.hasResponseBody ? endpoint.responseClassName : 'void'}>')
              .call([
                Method((b) {
                  b
                    ..modifier = MethodModifier.async
                    ..body = _buildTryBody(endpoint);
                }).closure,
              ])
              .awaited
              .returned,
        );
      });
    });
  }

  /// Builds the try block body.
  Code _buildTryBody(EndpointModel endpoint) {
    final statements = <Code>[];

    // Call data source
    final args = <Expression>[];
    if (endpoint.hasRequestBody || endpoint.queryParams.isNotEmpty || endpoint.pathParams.isNotEmpty) {
      args.add(refer('req'));
    }

    final namedArgs = <String, Expression>{};
    if (endpoint.isDelete) {
      namedArgs['cancelToken'] = refer('cancelToken');
      namedArgs['options'] = refer('options');
    } else {
      namedArgs['cancelToken'] = refer('cancelToken');
      namedArgs['onReceiveProgress'] = refer('onReceiveProgress');
      namedArgs['options'] = refer('options');
    }

    final dataSourceCall = refer('_dataSource').property(endpoint.methodName).call(args, namedArgs).awaited;

    if (endpoint.hasResponseBody) {
      statements.add(dataSourceCall.returned.statement);
    } else {
      statements.add(dataSourceCall.statement);
    }

    return Block((b) => b.statements.addAll(statements));
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
}
