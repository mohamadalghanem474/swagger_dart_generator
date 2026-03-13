import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Generates data source classes (abstract and implementation).
class DatasourceGenerator {
  final String outputDir;
  final String packageName;

  DatasourceGenerator({
    required this.outputDir,
    required this.packageName,
  });

  /// Generates all data source files.
  Future<void> generate(List<EndpointCategory> categories) async {
    final baseDir = Directory('$outputDir/lib/data/datasources');
    if (!baseDir.existsSync()) {
      baseDir.createSync(recursive: true);
    }

    for (final category in categories) {
      await _generateCategoryDatasource(category, baseDir);
    }
  }

  /// Generates data source for a single category.
  Future<void> _generateCategoryDatasource(
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

  /// Generates the abstract data source class.
  Future<void> _generateAbstractClass(
    EndpointCategory category,
    Directory outputDir,
    String fileName,
  ) async {
    final className = '${category.name}DataSource';
    final library = Library((b) {
      // Imports
      b.directives.add(Directive.import('package:dio/dio.dart'));

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
    final abstractClassName = '${category.name}DataSource';
    final implClassName = '${category.name}RemoteDataSourceImpl';

    final library = Library((b) {
      // Imports
      b.directives.add(Directive.import('package:dio/dio.dart'));
      b.directives.add(Directive.import('package:$packageName/data/datasources/$fileName/$fileName.dart'));
      b.directives.add(Directive.import('package:$packageName/end_points.dart'));

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
          b.requiredParameters.add(Parameter((b) {
            b
              ..name = '_dio'
              ..toThis = true;
          }));
        }));

        // Field
        b.fields.add(Field((b) {
          b
            ..name = '_dio'
            ..type = refer('Dio')
            ..modifier = FieldModifier.final$;
        }));

        // Methods
        for (final endpoint in category.endpoints) {
          b.methods.add(_buildImplementationMethod(endpoint, category.name));
        }
      }));
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();
    final formatter = DartFormatter();

    final file = File('${outputDir.path}/${fileName}_remote_datasource_impl.dart');
    await file.writeAsString(formatter.format(code));
  }

  /// Builds an abstract method definition.
  Method _buildAbstractMethod(EndpointModel endpoint) {
    final returnType = endpoint.hasResponseBody ? 'Future<${endpoint.responseClassName}>' : 'Future<void>';

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
  Method _buildImplementationMethod(EndpointModel endpoint, String categoryName) {
    final returnType = endpoint.hasResponseBody ? 'Future<${endpoint.responseClassName}>' : 'Future<void>';

    return Method((b) {
      b
        ..name = endpoint.methodName
        ..returns = refer(returnType)
        ..modifier = MethodModifier.async
        ..annotations.add(refer('override'));

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

      // Body
      b.body = _buildMethodBody(endpoint, categoryName);
    });
  }

  /// Builds the method body implementation.
  Block _buildMethodBody(EndpointModel endpoint, String categoryName) {
    final statements = <Code>[];

    // Build URL
    final categoryCamel = StringUtils.toLowerCamelCase(categoryName);
    statements.add(
      declareVar('url').assign(refer('EndPoints').property(categoryCamel).property(endpoint.methodName)).statement,
    );

    // Replace path parameters (direct fields on req)
    for (final param in endpoint.pathParams) {
      final fieldName = StringUtils.toLowerCamelCase(param.name);
      statements.add(
        refer('url')
            .assign(
              refer('url').property('replaceAll').call([
                literalString('{${param.name}}'),
                refer('req.$fieldName?.toString() ?? \'\''),
              ]),
            )
            .statement,
      );
    }

    // Build dio call
    final methodCall = refer('_dio').property(endpoint.method.value);
    final args = <Expression>[refer('url')];

    // Named arguments
    final namedArgs = <String, Expression>{};

    if (endpoint.hasRequestBody) {
      namedArgs['data'] = refer('req.toJson()');
    }

    if (endpoint.queryParams.isNotEmpty) {
      namedArgs['queryParameters'] = refer('req.toJson()');
    }

    if (endpoint.isDelete) {
      namedArgs['cancelToken'] = refer('cancelToken');
      namedArgs['options'] = refer('options');
    } else {
      namedArgs['cancelToken'] = refer('cancelToken');
      namedArgs['onReceiveProgress'] = refer('onReceiveProgress');
      namedArgs['options'] = refer('options');
    }

    // Return statement
    if (endpoint.hasResponseBody) {
      statements.add(
        declareFinal('result').assign(methodCall.call(args, namedArgs).awaited).statement,
      );
      statements.add(
        refer('${endpoint.responseClassName}.fromJson').call([refer('result.data')]).returned.statement,
      );
    } else {
      statements.add(methodCall.call(args, namedArgs).awaited.statement);
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
