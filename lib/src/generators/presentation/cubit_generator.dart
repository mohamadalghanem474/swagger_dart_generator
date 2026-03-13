import 'dart:io';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import '../../core/models/architecture_style.dart';
import '../../core/models/endpoint_model.dart';
import '../../utils/string_utils.dart';

/// Generates Cubits for state management.
class CubitGenerator {
  final String outputDir;
  final String packageName;
  final ArchitectureStyle architectureStyle;

  CubitGenerator({
    required this.outputDir,
    required this.packageName,
    required this.architectureStyle,
  });

  Future<void> generate(List<EndpointCategory> categories) async {
    for (final category in categories) {
      await _generateFeatureCubit(category);
    }
  }

  String _getCubitPath(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => '$outputDir/lib/features/$featureName/presentation/cubit',
      ArchitectureStyle.layerFirst => '$outputDir/lib/presentation/cubits/$featureName',
      ArchitectureStyle.simple => '$outputDir/lib/cubits/$featureName',
    };
  }

  Future<void> _generateFeatureCubit(EndpointCategory category) async {
    final featureName = StringUtils.toSnakeCase(category.name);
    final cubitDir = Directory(_getCubitPath(featureName));
    cubitDir.createSync(recursive: true);

    final className = '${category.name}Cubit';
    final stateName = '${category.name}State';

    final library = Library((b) {
      b.directives.add(Directive.import('package:flutter_bloc/flutter_bloc.dart'));
      b.directives.add(Directive.import('package:equatable/equatable.dart'));
      b.directives.add(Directive.import('package:$packageName/failure.dart'));
      
      // Import the repository
      final repoImport = switch (architectureStyle) {
        ArchitectureStyle.featureFirst => '../../domain/repositories/${featureName}_repository.dart',
        ArchitectureStyle.layerFirst => '../../domain/repositories/${featureName}_repository.dart',
        ArchitectureStyle.simple => '../../repositories/${featureName}_repository.dart',
      };
      b.directives.add(Directive.import(repoImport));

      // State Class
      b.body.add(_buildStateClass(stateName));
      
      // Cubit Class
      b.body.add(_buildCubitClass(className, stateName, category));
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();
    final formatter = DartFormatter();

    final file = File('${cubitDir.path}/${featureName}_cubit.dart');
    await file.writeAsString(formatter.format(code));
  }

  Class _buildStateClass(String stateName) {
    return Class((b) {
      b
        ..name = stateName
        ..extend = refer('Equatable')
        ..fields.addAll([
          Field((b) => b..name = 'isLoading'..type = refer('bool')..modifier = FieldModifier.final$),
          Field((b) => b..name = 'failure'..type = refer('Failure?')..modifier = FieldModifier.final$),
          Field((b) => b..name = 'data'..type = refer('dynamic')..modifier = FieldModifier.final$),
        ])
        ..constructors.add(Constructor((b) {
          b
            ..constant = true
            ..optionalParameters.addAll([
              Parameter((b) => b..name = 'isLoading'..toThis = true..named = true..defaultTo = const Code('false')),
              Parameter((b) => b..name = 'failure'..toThis = true..named = true),
              Parameter((b) => b..name = 'data'..toThis = true..named = true),
            ]);
        }))
        ..methods.add(Method((b) {
          b
            ..name = 'props'
            ..returns = refer('List<Object?>')
            ..type = MethodType.getter
            ..annotations.add(refer('override'))
            ..body = refer('[isLoading, failure, data]').code;
        }))
        ..methods.add(Method((b) {
          b
            ..name = 'copyWith'
            ..returns = refer(stateName)
            ..optionalParameters.addAll([
              Parameter((b) => b..name = 'isLoading'..type = refer('bool?')..named = true),
              Parameter((b) => b..name = 'failure'..type = refer('Failure?')..named = true),
              Parameter((b) => b..name = 'data'..type = refer('dynamic')..named = true),
            ])
            ..body = refer('$stateName(isLoading: isLoading ?? this.isLoading, failure: failure ?? this.failure, data: data ?? this.data)').code;
        }));
    });
  }

  Class _buildCubitClass(String className, String stateName, EndpointCategory category) {
    final repoInterface = 'I${category.name}Repository';
    
    return Class((b) {
      b
        ..name = className
        ..extend = refer('Cubit<$stateName>')
        ..fields.add(Field((b) => b..name = '_repository'..type = refer(repoInterface)..modifier = FieldModifier.final$))
        ..constructors.add(Constructor((b) {
          b
            ..requiredParameters.add(Parameter((b) => b..name = 'repository'..toThis = false..type = refer(repoInterface)))
            ..initializers.add(refer('_repository').assign(refer('repository')).code)
            ..body = refer('super($stateName())').code;
        }));

      for (final endpoint in category.endpoints) {
        b.methods.add(Method((b) {
          b
            ..name = endpoint.methodName
            ..returns = refer('Future<void>')
            ..modifier = MethodModifier.async;

          if (endpoint.hasRequestBody || endpoint.queryParams.isNotEmpty || endpoint.pathParams.isNotEmpty) {
            b.requiredParameters.add(Parameter((b) {
              b
                ..name = 'req'
                ..type = refer(endpoint.requestClassName);
            }));
          }

          b.body = Block((b) {
            b.addExpression(refer('emit').call([refer('state').property('copyWith').call([], {'isLoading': literalTrue})]));
            
            final repoCall = refer('_repository').property(endpoint.methodName);
            final args = <Expression>[];
            if (endpoint.hasRequestBody || endpoint.queryParams.isNotEmpty || endpoint.pathParams.isNotEmpty) {
              args.add(refer('req'));
            }

            b.addExpression(
              declareFinal('result').assign(repoCall.call(args).awaited),
            );

            b.addExpression(
              refer('result').property('fold').call([
                Method((b) => b..requiredParameters.add(Parameter((b) => b..name = 'f'))..body = refer('emit').call([refer('state').property('copyWith').call([], {'isLoading': literalFalse, 'failure': refer('f')})]).code).closure,
                Method((b) => b..requiredParameters.add(Parameter((b) => b..name = 's'))..body = refer('emit').call([refer('state').property('copyWith').call([], {'isLoading': literalFalse, 'data': refer('s')})]).code).closure,
              ]),
            );
          });
        }));
      }
    });
  }
}
