import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

/// Generates the failure classes for error handling.
class FailureGenerator {
  final String outputDir;

  FailureGenerator({required this.outputDir});

  /// Generates the failure.dart file.
  Future<void> generate() async {
    final library = Library((b) {
      b.body.addAll([
        // Failure abstract class
        Class((b) {
          b
            ..abstract = true
            ..name = 'Failure'
            ..constructors.add(Constructor((b) => b..constant = true))
            ..methods.add(Method((b) {
              b
                ..name = 'handle'
                ..returns = refer('FailureDetails')
                ..requiredParameters.addAll([
                  Parameter((b) {
                    b
                      ..name = 'e'
                      ..type = refer('dynamic');
                  }),
                  Parameter((b) {
                    b
                      ..name = 'stackTrace'
                      ..type = refer('StackTrace');
                  }),
                ]);
            }));
        }),

        // DefaultFailure implementation
        Class((b) {
          b
            ..name = 'DefaultFailure'
            ..extend = refer('Failure')
            ..constructors.add(Constructor((b) => b..constant = true));

          b.methods.add(Method((b) {
            b
              ..name = 'handle'
              ..returns = refer('FailureDetails')
              ..annotations.add(refer('override'))
              ..requiredParameters.addAll([
                Parameter((b) {
                  b
                    ..name = 'e'
                    ..type = refer('dynamic');
                }),
                Parameter((b) {
                  b
                    ..name = 'stackTrace'
                    ..type = refer('StackTrace');
                }),
              ])
              ..body = Block((b) {
                b.addExpression(
                  refer('FailureDetails').newInstance([], {
                    'message': refer('e').property('toString').call([]),
                    'stackTrace': refer('stackTrace'),
                  }).returned,
                );
              });
          }));
        }),

        // FailureDetails class
        Class((b) {
          b
            ..name = 'FailureDetails'
            ..constructors.add(Constructor((b) {
              b
                ..constant = true
                ..optionalParameters.addAll([
                  Parameter((b) {
                    b
                      ..name = 'message'
                      ..named = true
                      ..required = true
                      ..toThis = true;
                  }),
                  Parameter((b) {
                    b
                      ..name = 'stackTrace'
                      ..named = true
                      ..required = true
                      ..toThis = true;
                  }),
                  Parameter((b) {
                    b
                      ..name = 'show'
                      ..named = true
                      ..toThis = true
                      ..defaultTo = literalTrue.code;
                  }),
                  Parameter((b) {
                    b
                      ..name = 'extra'
                      ..named = true
                      ..toThis = true;
                  }),
                ]);
            }));

          // Fields
          b.fields.addAll([
            Field((b) {
              b
                ..name = 'message'
                ..type = refer('String')
                ..modifier = FieldModifier.final$;
            }),
            Field((b) {
              b
                ..name = 'stackTrace'
                ..type = refer('StackTrace')
                ..modifier = FieldModifier.final$;
            }),
            Field((b) {
              b
                ..name = 'show'
                ..type = refer('bool')
                ..modifier = FieldModifier.final$;
            }),
            Field((b) {
              b
                ..name = 'extra'
                ..type = refer('Object?')
                ..modifier = FieldModifier.final$;
            }),
          ]);
        }),


      ]);

      // Add imports
      b.directives.add(Directive.import('package:dartz/dartz.dart'));
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();
    final formatter = DartFormatter();

    final file = File('$outputDir/lib/failure.dart');
    await file.writeAsString(formatter.format(code));
  }
}
