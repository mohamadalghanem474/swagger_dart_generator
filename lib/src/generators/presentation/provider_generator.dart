import 'dart:io';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:swagger_dart_generator/src/core/models/architecture_style.dart';
import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Generates Riverpod Providers for state management.
class ProviderGenerator {
  final String outputDir;
  final String packageName;
  final ArchitectureStyle architectureStyle;

  ProviderGenerator({
    required this.outputDir,
    required this.packageName,
    required this.architectureStyle,
  });

  Future<void> generate(List<EndpointCategory> categories) async {
    for (final category in categories) {
      await _generateFeatureProviders(category);
    }
  }

  String _getProviderPath(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst =>
        '$outputDir/lib/features/$featureName/presentation/providers',
      ArchitectureStyle.layerFirst =>
        '$outputDir/lib/presentation/providers/$featureName',
      ArchitectureStyle.simple => '$outputDir/lib/providers/$featureName',
    };
  }

  Future<void> _generateFeatureProviders(EndpointCategory category) async {
    final featureName = StringUtils.toSnakeCase(category.name);
    final providerDir = Directory(_getProviderPath(featureName));
    providerDir.createSync(recursive: true);

    final library = Library((b) {
      b.directives.add(Directive.import('package:riverpod/riverpod.dart'));
      b.directives
          .add(Directive.import('package:$packageName/$packageName.dart'));

      // Provider for the repository
      b.body.add(Field((b) => b
        ..name =
            '${StringUtils.toLowerCamelCase(category.name)}RepositoryProvider'
        ..type = refer('Provider<I${category.name}Repository>')
        ..modifier = FieldModifier.final$
        ..assignment = refer('Provider').call([
          Method((b) => b
            ..requiredParameters.add(Parameter((b) => b..name = 'ref'))
            ..body = refer('${StringUtils.toPascalCase(packageName)}.init')
                .call([refer('Dio()')])
                .property(StringUtils.toLowerCamelCase(category.name))
                .code).closure
        ]).code));

      // AsyncNotifiers for each endpoint
      for (final endpoint in category.endpoints) {
        b.body.add(_buildNotifierClass(endpoint, category.name));

        final notifierName =
            '${StringUtils.toPascalCase(endpoint.methodName)}Notifier';
        final providerName = '${endpoint.methodName}Provider';

        b.body.add(Field((b) => b
          ..name = providerName
          ..modifier = FieldModifier.final$
          ..assignment = refer('AsyncNotifierProvider<$notifierName, dynamic>')
              .call([
            Method((b) => b..body = refer('$notifierName.new').code).closure
          ]).code));
      }
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();
    final formatter = DartFormatter();

    final file = File('${providerDir.path}/${featureName}_providers.dart');
    await file.writeAsString(formatter.format(code));
  }

  Class _buildNotifierClass(EndpointModel endpoint, String categoryName) {
    final notifierName =
        '${StringUtils.toPascalCase(endpoint.methodName)}Notifier';

    return Class((b) {
      b
        ..name = notifierName
        ..extend = refer('AsyncNotifier<dynamic>')
        ..methods.add(Method((b) => b
          ..name = 'build'
          ..annotations.add(refer('override'))
          ..returns = refer('FutureOr<dynamic>')
          ..body = refer('null').returned.statement))
        ..methods.add(Method((b) {
          b
            ..name = 'call'
            ..returns = refer('Future<void>')
            ..modifier = MethodModifier.async;

          if (endpoint.hasRequestBody ||
              endpoint.queryParams.isNotEmpty ||
              endpoint.pathParams.isNotEmpty) {
            b.requiredParameters.add(Parameter((b) => b
              ..name = 'req'
              ..type = refer(endpoint.requestClassName)));
          }

          b.body = Block((b) {
            b.addExpression(
                refer('state').assign(refer('const AsyncValue.loading()')));

            final repoProvider =
                '${StringUtils.toLowerCamelCase(categoryName)}RepositoryProvider';
            final repoCall = refer('ref')
                .property('read')
                .call([refer(repoProvider)]).property(endpoint.methodName);

            final args = <Expression>[];
            if (endpoint.hasRequestBody ||
                endpoint.queryParams.isNotEmpty ||
                endpoint.pathParams.isNotEmpty) {
              args.add(refer('req'));
            }

            b.addExpression(
                declareFinal('result').assign(repoCall.call(args).awaited));

            b.addExpression(refer('result').property('fold').call([
              Method((b) => b
                ..requiredParameters.add(Parameter((b) => b..name = 'f'))
                ..body = refer('state')
                    .assign(refer('AsyncValue.error')
                        .call([refer('f'), refer('StackTrace.current')]))
                    .statement).closure,
              Method((b) => b
                ..requiredParameters.add(Parameter((b) => b..name = 's'))
                ..body = refer('state')
                    .assign(refer('AsyncValue.data').call([refer('s')]))
                    .statement).closure,
            ]));
          });
        }));
    });
  }
}
