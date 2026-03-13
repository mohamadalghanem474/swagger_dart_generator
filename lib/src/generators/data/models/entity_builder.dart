import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import '../../../utils/string_utils.dart';

/// Builds an Entity class that extends Equatable (base class for models).
///
/// Features:
/// - Extends Equatable for value equality
/// - const constructor with named parameters
/// - props getter for Equatable
/// - No fromJson/toJson, no copyWith (those are in Model)
/// - Used as base class for Models
class EntityBuilder {
  final String className;
  final Map<String, dynamic> properties;

  EntityBuilder({
    required this.className,
    required this.properties,
  });

  /// Builds the complete entity class as a formatted Dart string.
  String build() {
    final classBuilder = _buildClass();
    final library = Library((b) {
      b.directives.add(Directive.import('package:equatable/equatable.dart'));
      b.body.add(classBuilder);
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();

    final formatter = DartFormatter();
    return formatter.format(code);
  }

  /// Builds the entity class definition.
  Class _buildClass() {
    final fields = _buildFields();
    final constructor = _buildConstructor();
    final propsGetter = _buildPropsGetter();

    return Class((b) {
      b
        ..name = className
        ..extend = refer('Equatable')
        ..fields.addAll(fields)
        ..constructors.add(constructor)
        ..methods.add(propsGetter);
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
          final fieldList = properties.keys.map((name) => refer(StringUtils.toLowerCamelCase(name))).toList();
          b.addExpression(literalList(fieldList).returned);
        });
    });
  }

  /// Builds the class fields.
  List<Field> _buildFields() {
    return properties.entries.map((entry) {
      final fieldName = StringUtils.toLowerCamelCase(entry.key);
      final fieldType = _inferType(entry.key, entry.value);

      return Field((b) {
        b
          ..name = fieldName
          ..type = refer(fieldType)
          ..modifier = FieldModifier.final$;
      });
    }).toList();
  }

  /// Builds the constructor.
  Constructor _buildConstructor() {
    return Constructor((b) {
      b.constant = true;

      for (final entry in properties.entries) {
        final fieldName = StringUtils.toLowerCamelCase(entry.key);

        b.optionalParameters.add(Parameter((b) {
          b
            ..name = fieldName
            ..named = true
            ..toThis = true;
        }));
      }
    });
  }

  /// Infers the Dart type from a property value.
  String _inferType(String name, dynamic value) {
    if (value == null) return 'dynamic?';

    if (value is String) {
      if (name.toLowerCase().contains('date') || name.toLowerCase().contains('time')) {
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
      final hasNestedObjects = value.values.any((v) => v is Map || v is List);
      if (!hasNestedObjects) {
        return 'Map<String, dynamic>?';
      }
      final nestedClassName = StringUtils.toPascalCase(name);
      return '$nestedClassName?';
    }

    return 'dynamic?';
  }
}
