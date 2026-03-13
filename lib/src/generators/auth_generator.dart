import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

/// Generates the AuthInterceptor for the generated package.
class AuthGenerator {
  final String outputDir;

  AuthGenerator({required this.outputDir});

  /// Generates the auth_interceptor.dart file.
  Future<void> generate() async {
    final library = Library((b) {
      b.directives.add(Directive.import('package:dio/dio.dart'));

      b.body.add(_buildAuthInterceptorClass());
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();
    final formatter = DartFormatter();

    final directory = Directory('$outputDir/lib/core');
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
    }

    final file = File('${directory.path}/auth_interceptor.dart');
    await file.writeAsString(formatter.format(code));
  }

  /// Builds the AuthInterceptor class.
  Class _buildAuthInterceptorClass() {
    return Class((b) {
      b
        ..name = 'AuthInterceptor'
        ..extend = refer('Interceptor');

      // Static method to create the interceptor
      b.methods.add(Method((b) {
        b
          ..name = 'bearer'
          ..static = true
          ..returns = refer('AuthInterceptor')
          ..requiredParameters.add(Parameter((b) {
            b
              ..name = 'token'
              ..type = refer('String');
          }))
          ..body = refer('AuthInterceptor(token: token)').code;
      }));

      // Fields
      b.fields.add(Field((b) {
        b
          ..name = 'token'
          ..modifier = FieldModifier.final$
          ..type = refer('String');
      }));

      // Constructor
      b.constructors.add(Constructor((b) {
        b
          ..constant = false
          ..requiredParameters.add(Parameter((b) {
            b
              ..name = 'token'
              ..toThis = true;
          }));
      }));

      // onRequest override
      b.methods.add(Method((b) {
        b
          ..name = 'onRequest'
          ..annotations.add(refer('override'))
          ..returns = refer('void')
          ..requiredParameters.addAll([
            Parameter((b) {
              b
                ..name = 'options'
                ..type = refer('RequestOptions');
            }),
            Parameter((b) {
              b
                ..name = 'handler'
                ..type = refer('RequestInterceptorHandler');
            }),
          ])
          ..body = Block((b) {
            b.addExpression(
              refer('options').property('headers').index(literalString('Authorization')).assign(literalString('Bearer \$token')),
            );
            b.addExpression(
              refer('handler').property('next').call([refer('options')]),
            );
          });
      }));
    });
  }
}
