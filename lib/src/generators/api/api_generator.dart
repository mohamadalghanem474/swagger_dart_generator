import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Generates the main API class and GetIt dependency injection setup.
class ApiGenerator {
  final String outputDir;
  final String packageName;

  ApiGenerator({
    required this.outputDir,
    required this.packageName,
  });

  /// Generates the main API file with GetIt DI.
  Future<void> generate(List<EndpointCategory> categories) async {
    final mainClassName = StringUtils.toPascalCase(packageName);

    final library = Library((b) {
      // Imports
      b.directives.add(Directive.import('package:dio/dio.dart'));
      b.directives.add(Directive.import('package:get_it/get_it.dart'));
      b.directives.add(Directive.import('package:$packageName/failure.dart'));

      for (final category in categories) {
        final categoryName = StringUtils.toSnakeCase(category.name);
        b.directives.add(Directive.import(
          'package:$packageName/data/datasources/$categoryName/$categoryName.dart',
        ));
        b.directives.add(Directive.import(
          'package:$packageName/data/datasources/$categoryName/${categoryName}_remote_datasource_impl.dart',
        ));
        b.directives.add(Directive.import(
          'package:$packageName/data/repositories/$categoryName/$categoryName.dart',
        ));
        b.directives.add(Directive.import(
          'package:$packageName/data/repositories/$categoryName/${categoryName}_repository_impl.dart',
        ));
      }

      // GetIt instance getter
      b.body.add(Code('final GetIt _getIt = GetIt.instance;'));

      // Main API class
      b.body.add(_buildMainApiClass(mainClassName, categories));

      // DI setup class
      b.body.add(_buildDiSetupClass(mainClassName, categories));
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();
    final formatter = DartFormatter();

    final file = File('$outputDir/lib/$packageName.dart');
    await file.writeAsString(formatter.format(code));
  }

  /// Builds the main API class using GetIt.
  Class _buildMainApiClass(String className, List<EndpointCategory> categories) {
    return Class((b) {
      b.name = className;

      // Fields for dio and failure
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

      // Private constructor
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

      // Factory init method
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

      // Repository getters using GetIt
      for (final category in categories) {
        final camelName = StringUtils.toLowerCamelCase(category.name);
        final repoType = '${category.name}Repository';

        b.methods.add(Method((b) {
          b
            ..name = camelName
            ..type = MethodType.getter
            ..returns = refer(repoType)
            ..lambda = true
            ..body = refer('_getIt<$repoType>()').code;
        }));
      }
    });
  }

  /// Builds the DI setup class with GetIt registration.
  Class _buildDiSetupClass(String apiClassName, List<EndpointCategory> categories) {
    return Class((b) {
      b.name = '${apiClassName}DI';

      // Static init method
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
            // Register Dio
            b.addExpression(
              refer('_getIt').property('registerLazySingleton<Dio>').call([
                Method((b) {
                  b.lambda = true;
                  b.body = refer('dio').code;
                }).closure,
              ]),
            );

            // Register Failure
            b.addExpression(
              refer('_getIt').property('registerLazySingleton<Failure>').call([
                Method((b) {
                  b.lambda = true;
                  b.body = refer('failure').code;
                }).closure,
              ]),
            );

            // Register DataSources and Repositories for each category
            for (final category in categories) {
              final categoryName = category.name;
              final dsType = '${categoryName}DataSource';
              final dsImpl = '${categoryName}RemoteDataSourceImpl';
              final repoType = '${categoryName}Repository';
              final repoImpl = '${categoryName}RepositoryImpl';

              // Register DataSource
              b.addExpression(
                refer('_getIt').property('registerLazySingleton<$dsType>').call([
                  Method((b) {
                    b.lambda = true;
                    b.body = refer('$dsImpl(_getIt<Dio>())').code;
                  }).closure,
                ]),
              );

              // Register Repository
              b.addExpression(
                refer('_getIt').property('registerLazySingleton<$repoType>').call([
                  Method((b) {
                    b.lambda = true;
                    b.body = refer('$repoImpl(_getIt<$dsType>(), _getIt<Failure>())').code;
                  }).closure,
                ]),
              );
            }
          });
      }));
    });
  }
}
