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
      ArchitectureStyle.featureFirst => 
        'package:$packageName/features/$featureName/data/datasources/$fileName',
      ArchitectureStyle.layerFirst => 
        'package:$packageName/data/datasources/$fileName',
      ArchitectureStyle.simple => 
        'package:$packageName/datasources/$fileName',
    };
  }

  /// Gets the repository implementation import based on architecture style.
  String _getRepositoryImplImport(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => 
        'package:$packageName/features/$featureName/data/repositories/${featureName}_repository_impl.dart',
      ArchitectureStyle.layerFirst => 
        'package:$packageName/data/repositories/${featureName}_repository_impl.dart',
      ArchitectureStyle.simple => 
        'package:$packageName/repositories/${featureName}_repository_impl.dart',
    };
  }

  /// Gets the repository interface import based on architecture style.
  String _getRepositoryInterfaceImport(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => 
        'package:$packageName/features/$featureName/domain/repositories/${featureName}_repository.dart',
      ArchitectureStyle.layerFirst => 
        'package:$packageName/domain/repositories/${featureName}_repository.dart',
      ArchitectureStyle.simple => 
        'package:$packageName/repositories/${featureName}_repository.dart',
    };
  }

  Class _buildMainApiClass(String className, List<EndpointCategory> categories) {
    return Class((b) {
      b.name = className;

      b.fields.addAll([
        Field((b) {
          b
            ..name = '_dio'
            ..type = refer('Dio')
            ..modifier = FieldModifier.final$;
        }),
        Field((b) {
          b
            ..name = '_failure'
            ..type = refer('Failure')
            ..modifier = FieldModifier.final$;
        }),
      ]);

      b.constructors.add(Constructor((b) {
        b.name = '_internal';
        b.requiredParameters.addAll([
          Parameter((b) {
            b
              ..name = '_dio'
              ..toThis = true;
          }),
          Parameter((b) {
            b
              ..name = '_failure'
              ..toThis = true;
          }),
        ]);
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
          ..optionalParameters.add(Parameter((b) {
            b
              ..name = 'failure'
              ..named = true
              ..type = refer('Failure')
              ..defaultTo = refer('const DefaultFailure()').code;
          }))
          ..body = Block((b) {
            b.addExpression(
              refer('$className._internal(dio, failure)').returned,
            );
          });
      }));

      for (final category in categories) {
        final camelName = StringUtils.toLowerCamelCase(category.name);
        final repoInterface = 'I${category.name}Repository';

        b.methods.add(Method((b) {
          b
            ..name = camelName
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
          ..body = Block((b) {
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
