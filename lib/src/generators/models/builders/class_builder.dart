import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Builds a Dart class with fromJson, toJson, copyWith, and Equatable.
class ClassBuilder {
  final String className;
  final Map<String, dynamic> properties;
  final bool useEquatable;

  ClassBuilder({
    required this.className,
    required this.properties,
    this.useEquatable = true,
  });

  /// Builds the complete class as a formatted Dart string.
  String build() {
    final classBuilder = _buildClass();
    final library = Library((b) {
      // Add imports
      b.directives.add(Directive.import('package:equatable/equatable.dart'));
      b.directives.add(Directive.import('package:meta/meta.dart'));
      b.body.add(classBuilder);
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();

    final formatter = DartFormatter();
    return formatter.format(code);
  }

  /// Builds the class definition.
  Class _buildClass() {
    final fields = _buildFields();
    final constructor = _buildConstructor();
    final fromJson = _buildFromJson();
    final toJson = _buildToJson();
    final copyWith = _buildCopyWith();

    final methods = [fromJson, toJson, copyWith];

    if (useEquatable) {
      final propsGetter = _buildPropsGetter();
      methods.add(propsGetter);
    }

    return Class((b) {
      b
        ..name = className
        ..extend = useEquatable ? refer('Equatable') : null
        ..fields.addAll(fields)
        ..constructors.add(constructor)
        ..methods.addAll(methods);

      if (useEquatable) {
        b.annotations.add(refer('immutable'));
      }
    });
  }

  /// Builds the class fields.
  List<Field> _buildFields() {
    return properties.entries.map((entry) {
      final fieldName = entry.key;
      final fieldType = _inferType(entry.key, entry.value);

      return Field((b) {
        b
          ..name = fieldName
          ..type = refer(fieldType)
          ..modifier = FieldModifier.final$
          ..docs.add('/// The $fieldName field.');
      });
    }).toList();
  }

  /// Builds the constructor.
  Constructor _buildConstructor() {
    return Constructor((b) {
      b.constant = true;

      for (final entry in properties.entries) {
        final fieldName = entry.key;

        b.optionalParameters.add(Parameter((b) {
          b
            ..name = fieldName
            ..named = true
            ..toThis = true;
        }));
      }
    });
  }

  /// Builds the fromJson factory constructor.
  Method _buildFromJson() {
    return Method((b) {
      b
        ..name = 'fromJson'
        ..returns = refer(className)
        ..static = true
        ..requiredParameters.add(Parameter((b) {
          b
            ..name = 'json'
            ..type = refer('Map<String, dynamic>');
        }))
        ..body = Block((b) {
          final constructorArgs = <String, Expression>{};
          for (final entry in properties.entries) {
            final fieldName = entry.key;
            final fieldType = _inferType(fieldName, entry.value);

            constructorArgs[fieldName] = _buildFieldFromJson(fieldName, fieldType);
          }

          b.addExpression(
            refer(className)
                .newInstance([], constructorArgs)
                .returned,
          );
        });
    });
  }

  /// Builds the toJson method.
  Method _buildToJson() {
    return Method((b) {
      b
        ..name = 'toJson'
        ..returns = refer('Map<String, dynamic>')
        ..body = Block((b) {
          final mapEntries = <Expression, Expression>{};

          for (final entry in properties.entries) {
            final fieldName = entry.key;
            final fieldType = _inferType(fieldName, entry.value);

            final key = literalString(fieldName);
            final value = _buildFieldToJson(fieldName, fieldType);

            mapEntries[key] = value;
          }

          b.addExpression(
            literalMap(mapEntries, refer('String'), refer('dynamic')).returned,
          );
        });
    });
  }

  /// Builds the copyWith method.
  Method _buildCopyWith() {
    return Method((b) {
      b
        ..name = 'copyWith'
        ..returns = refer(className)
        ..body = Block((b) {
          final args = <String, Expression>{};

          for (final entry in properties.entries) {
            final fieldName = entry.key;
            args[fieldName] = refer(fieldName).ifNullThen(refer('this.$fieldName'));
          }

          b.addExpression(
            refer(className).newInstance([], args).returned,
          );
        });

      // Add optional parameters
      for (final entry in properties.entries) {
        final fieldName = entry.key;
        final fieldType = _inferType(fieldName, entry.value);
        // Remove trailing ? and add single ? for copyWith parameter
        final baseType = fieldType.replaceAll('?', '');

        b.optionalParameters.add(Parameter((b) {
          b
            ..name = fieldName
            ..named = true
            ..type = refer('$baseType?');
        }));
      }
    });
  }

  /// Builds the props getter for Equatable.
  Method _buildPropsGetter() {
    return Method((b) {
      b
        ..name = 'props'
        ..returns = refer('List<Object?>')
        ..type = MethodType.getter
        ..annotations.add(refer('override'))
        ..body = Block((b) {
          final fieldList = properties.keys.map((name) => refer(name)).toList();
          b.addExpression(literalList(fieldList).returned);
        });
    });
  }

  /// Builds field extraction from JSON.
  Expression _buildFieldFromJson(String fieldName, String fieldType) {
    final baseType = fieldType.replaceAll('?', '');
    final jsonAccess = refer('json').index(literalString(fieldName));

    // Handle nullable
    if (fieldType.endsWith('?')) {
      return jsonAccess.equalTo(literalNull).conditional(
        literalNull,
        _buildCastExpression(jsonAccess, baseType),
      );
    }

    return _buildCastExpression(jsonAccess, baseType);
  }

  /// Builds a cast expression for a type.
  Expression _buildCastExpression(Expression expression, String type) {
    return switch (type) {
      'String' => expression.asA(refer('String')),
      'int' => expression.asA(refer('int')),
      'double' => expression.asA(refer('double')),
      'bool' => expression.asA(refer('bool')),
      'DateTime' => refer('DateTime').property('parse').call([expression.asA(refer('String'))]),
      'List<dynamic>' => expression.asA(refer('List<dynamic>')),
      'Map<String, dynamic>' => expression.asA(refer('Map<String, dynamic>')),
      _ => expression,
    };
  }

  /// Builds field serialization to JSON.
  Expression _buildFieldToJson(String fieldName, String fieldType) {
    final baseType = fieldType.replaceAll('?', '');
    final fieldRef = refer(fieldName);

    if (baseType == 'DateTime') {
      return fieldRef.nullSafeProperty('toIso8601String').call([]);
    }

    return fieldRef;
  }

  /// Infers the Dart type from a property value.
  String _inferType(String name, dynamic value) {
    if (value == null) return 'dynamic?';

    if (value is String) {
      // Check if it looks like a date
      if (name.toLowerCase().contains('date') ||
          name.toLowerCase().contains('time')) {
        return 'DateTime?';
      }
      return 'String?';
    }

    if (value is int) return 'int?';
    if (value is double) return 'double?';
    if (value is bool) return 'bool?';

    if (value is List) {
      if (value.isEmpty) return 'List<dynamic>?';
      final itemType = _inferType('item', value.first);
      return 'List<${itemType.replaceAll('?', '')}>?';
    }

    if (value is Map) {
      // Check if all values are primitives (treat as Map)
      final hasNestedObjects = value.values.any((v) => v is Map || v is List);
      if (!hasNestedObjects) {
        return 'Map<String, dynamic>?';
      }

      // Generate nested class name
      final nestedClassName = StringUtils.toPascalCase(name);
      return '$nestedClassName?';
    }

    return 'dynamic?';
  }
}
