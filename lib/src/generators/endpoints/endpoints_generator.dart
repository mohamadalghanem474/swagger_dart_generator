import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Generates the endpoints constants file.
class EndpointsGenerator {
  final String outputDir;

  EndpointsGenerator({required this.outputDir});

  /// Generates the end_points.dart file.
  Future<void> generate(List<EndpointCategory> categories) async {
    final library = Library((b) {
      // Main EndPoints class
      b.body.add(Class((b) {
        b.name = 'EndPoints';
        b.constructors.add(Constructor((b) => b..constant = true));

        for (final category in categories) {
          final fieldName = StringUtils.toLowerCamelCase(category.name);
          final className = '_${category.name}';

          b.fields.add(Field((b) {
            b
              ..name = fieldName
              ..static = true
              ..modifier = FieldModifier.constant
              ..assignment = refer(className).constInstance([]).code;
          }));
        }
      }));

      // Category classes
      for (final category in categories) {
        b.body.add(_buildCategoryClass(category));
      }
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();
    final formatter = DartFormatter();

    final file = File('$outputDir/lib/end_points.dart');
    await file.writeAsString(formatter.format(code));
  }

  /// Builds a category class containing endpoint constants.
  Class _buildCategoryClass(EndpointCategory category) {
    return Class((b) {
      b
        ..name = '_${category.name}'
        ..constructors.add(Constructor((b) => b..constant = true));

      for (final endpoint in category.endpoints) {
        b.fields.add(Field((b) {
          b
            ..name = endpoint.methodName
            ..modifier = FieldModifier.final$
            ..assignment = literalString(endpoint.path).code;
        }));
      }
    });
  }
}
