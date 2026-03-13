import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import 'package:swagger_dart_generator/src/core/models/architecture_style.dart';
import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Generates the main API class and GetIt dependency injection setup.
class ApiGenerator {
  final String outputDir;
  final String packageName;
  final ArchitectureStyle architectureStyle;

  ApiGenerator({
    required this.outputDir,
    required this.packageName,
    required this.architectureStyle,
  });

  /// Generates the main API file with GetIt DI.
  Future<void> generate(List<EndpointCategory> categories) async {
    final mainClassName = StringUtils.toPascalCase(packageName);

    final library = Library((b) {
      b.directives.add(Directive.import('package:dio/dio.dart'));
      b.directives.add(Directive.import('package:get_it/get_it.dart'));
      b.directives.add(Directive.import('package:$packageName/failure.dart'));
      b.directives.add(Directive.import('package:$packageName/core/auth_interceptor.dart'));

      for (final category in categories) {
        final featureName = StringUtils.toSnakeCase(category.name);
        b.directives.add(Directive.import(
          _getDatasourceImport(featureName),
        ));
        // For simple architecture, interface and impl are in same file
        if (architectureStyle == ArchitectureStyle.simple) {
          b.directives.add(Directive.import(
            _getRepositoryInterfaceImport(featureName),
          ));
        } else {
          b.directives.add(Directive.import(
            _getRepositoryImplImport(featureName),
          ));
          b.directives.add(Directive.import(
            _getRepositoryInterfaceImport(featureName),
          ));
        }
      }

      b.body.add(Code('final GetIt _getIt = GetIt.instance;'));
      b.body.add(_buildMainApiClass(mainClassName, categories));
      b.body.add(_buildDiSetupClass(mainClassName, categories));
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();
    final formatter = DartFormatter();

    final file = File('$outputDir/lib/$packageName.dart');
    await file.writeAsString(formatter.format(code));
  }

  /// Gets the datasource import based on architecture style.
  String _getDatasourceImport(String featureName) {
    final fileName = switch (architectureStyle) {
      ArchitectureStyle.featureFirst => '${featureName}_remote_datasource.dart',
      _ => '${featureName}_datasource.dart',
    };
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => 'package:$packageName/features/$featureName/data/datasources/$fileName',
      ArchitectureStyle.layerFirst => 'package:$packageName/data/datasources/$fileName',
      ArchitectureStyle.simple => 'package:$packageName/datasources/$fileName',
    };
  }

  /// Gets the repository implementation import based on architecture style.
  String _getRepositoryImplImport(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => 'package:$packageName/features/$featureName/data/repositories/${featureName}_repository_impl.dart',
      ArchitectureStyle.layerFirst => 'package:$packageName/data/repositories/${featureName}_repository_impl.dart',
      ArchitectureStyle.simple => 'package:$packageName/repositories/${featureName}_repository_impl.dart',
    };
  }

  /// Gets the repository interface import based on architecture style.
  String _getRepositoryInterfaceImport(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => 'package:$packageName/features/$featureName/domain/repositories/${featureName}_repository.dart',
      ArchitectureStyle.layerFirst => 'package:$packageName/domain/repositories/${featureName}_repository.dart',
      ArchitectureStyle.simple => 'package:$packageName/repositories/${featureName}_repository.dart',
    };
  }

  Class _buildMainApiClass(String className, List<EndpointCategory> categories) {
    return Class((b) {
      b.name = className;

      b.constructors.add(Constructor((b) {
        b.name = '_internal';
      }));

      b.methods.add(Method((b) {
        b
          ..name = 'init'
          ..static = true
          ..returns = refer(className)
          ..requiredParameters.add(Parameter((b) {
            b
              ..name = 'dio'
              ..type = refer('Dio');
          }))
          ..optionalParameters.addAll([
            Parameter((b) {
              b
                ..name = 'interceptors'
                ..named = true
                ..type = refer('List<Interceptor>?');
            }),
            Parameter((b) {
              b
                ..name = 'token'
                ..named = true
                ..type = refer('String?');
            }),
            Parameter((b) {
              b
                ..name = 'failure'
                ..named = true
                ..type = refer('Failure')
                ..defaultTo = refer('const DefaultFailure()').code;
            }),
          ])
          ..body = Block((b) {
            b.addExpression(refer('${className}DI').property('init').call([refer('dio'), refer('failure')], {
              'token': refer('token'),
              'interceptors': refer('interceptors'),
            }));
            b.addExpression(
              refer('$className._internal').call([]).returned,
            );
          });
      }));

      for (final category in categories) {
        final camelName = StringUtils.toLowerCamelCase(category.name);
        final safeCamelName = camelName == 'default' ? 'defaultRepository' : camelName;
        final repoInterface = 'I${category.name}Repository';

        b.methods.add(Method((b) {
          b
            ..name = safeCamelName
            ..type = MethodType.getter
            ..returns = refer(repoInterface)
            ..lambda = true
            ..body = refer('_getIt<$repoInterface>()').code;
        }));
      }
    });
  }

  Class _buildDiSetupClass(String apiClassName, List<EndpointCategory> categories) {
    return Class((b) {
      b.name = '${apiClassName}DI';

      b.methods.add(Method((b) {
        b
          ..name = 'init'
          ..static = true
          ..returns = refer('void')
          ..requiredParameters.addAll([
            Parameter((b) {
              b
                ..name = 'dio'
                ..type = refer('Dio');
            }),
            Parameter((b) {
              b
                ..name = 'failure'
                ..type = refer('Failure');
            }),
          ])
          ..optionalParameters.addAll([
            Parameter((b) {
              b
                ..name = 'token'
                ..named = true
                ..type = refer('String?');
            }),
            Parameter((b) {
              b
                ..name = 'interceptors'
                ..named = true
                ..type = refer('List<Interceptor>?');
            }),
          ])
          ..body = Block((b) {
            b.statements.add(
              refer('if (token != null) { dio.interceptors.add(AuthInterceptor.bearer(token)); }').code,
            );
            b.statements.add(
              refer('if (interceptors != null) { dio.interceptors.addAll(interceptors); }').code,
            );

            b.addExpression(
              refer('_getIt').property('registerLazySingleton<Dio>').call([
                Method((b) {
                  b.lambda = true;
                  b.body = refer('dio').code;
                }).closure,
              ]),
            );

            b.addExpression(
              refer('_getIt').property('registerLazySingleton<Failure>').call([
                Method((b) {
                  b.lambda = true;
                  b.body = refer('failure').code;
                }).closure,
              ]),
            );

            for (final category in categories) {
              final categoryName = category.name;
              final dsInterface = 'I${categoryName}DataSource';
              final dsImpl = switch (architectureStyle) {
                ArchitectureStyle.featureFirst => '${categoryName}RemoteDataSource',
                _ => '${categoryName}DataSourceImpl',
              };
              final repoInterface = 'I${categoryName}Repository';
              final repoImpl = '${categoryName}RepositoryImpl';

              b.addExpression(
                refer('_getIt').property('registerLazySingleton<$dsInterface>').call([
                  Method((b) {
                    b.lambda = true;
                    b.body = refer('$dsImpl(_getIt<Dio>())').code;
                  }).closure,
                ]),
              );

              b.addExpression(
                refer('_getIt').property('registerLazySingleton<$repoInterface>').call([
                  Method((b) {
                    b.lambda = true;
                    b.body = refer('$repoImpl(_getIt<$dsInterface>(), _getIt<Failure>())').code;
                  }).closure,
                ]),
              );
            }
          });
      }));
    });
  }
}
