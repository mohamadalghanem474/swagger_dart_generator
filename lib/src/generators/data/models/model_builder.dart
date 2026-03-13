import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import '../../../utils/string_utils.dart';

/// Builds a Model class that extends an Entity or works standalone.
///
/// Features:
/// - Extends Entity class when entityClassName is provided (super.id, super.status, etc.)
/// - Standalone model with its own fields when entityClassName is null
/// - Equatable for value equality
/// - fromJson factory constructor
/// - toJson method
/// - copyWith method
class ModelBuilder {
  final String className;
  final String? entityClassName;
  final String? entityImportPath;
  final Map<String, dynamic> properties;

  ModelBuilder({
    required this.className,
    this.entityClassName,
    this.entityImportPath,
    required this.properties,
  });

  /// Builds the complete model class as a formatted Dart string.
  String build() {
    final classBuilder = _buildClass();
    final library = Library((b) {
      // Only import equatable for standalone models
      // When extending entity, the entity already imports equatable
      if (!_hasEntity) {
        b.directives.add(Directive.import('package:equatable/equatable.dart'));
      }
      b.directives.add(Directive.import('package:meta/meta.dart'));
      if (entityImportPath != null && entityImportPath!.isNotEmpty) {
        b.directives.add(Directive.import(entityImportPath!));
      }
      b.body.add(classBuilder);
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();

    final formatter = DartFormatter();
    return formatter.format(code);
  }

  /// Checks if this model extends an entity.
  bool get _hasEntity => entityClassName != null && entityClassName!.isNotEmpty;

  /// Builds the model class definition.
  Class _buildClass() {
    final fields = _buildFields();
    final constructor = _buildConstructor();
    final fromJson = _buildFromJson();
    final toJson = _buildToJson();
    final copyWith = _buildCopyWith();
    final propsGetter = _buildPropsGetter();
    final stringifyGetter = _buildStringifyGetter();

    return Class((b) {
      b
        ..name = className
        ..fields.addAll(fields)
        ..constructors.addAll([constructor, fromJson])
        ..annotations.add(refer('immutable'));

      if (_hasEntity) {
        // Model extends Entity (which already has Equatable props)
        // No need to override props - it's inherited from Entity
        b
          ..extend = refer(entityClassName!)
          ..methods.addAll([toJson, copyWith]);
      } else {
        // Standalone model extends Equatable directly
        b
          ..extend = refer('Equatable')
          ..methods.addAll([toJson, copyWith, propsGetter, stringifyGetter]);
      }
    });
  }

  /// Builds the class fields.
  /// When extending entity, fields are in parent.
  /// When standalone, fields are defined here.
  List<Field> _buildFields() {
    if (_hasEntity) {
      return []; // All fields are in parent Entity
    }

    // Standalone mode: define fields here
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
  /// When extending entity, uses toSuper.
  /// When standalone, uses toThis.
  Constructor _buildConstructor() {
    return Constructor((b) {
      b.constant = true;

      for (final entry in properties.entries) {
        final fieldName = StringUtils.toLowerCamelCase(entry.key);

        b.optionalParameters.add(Parameter((b) {
          b
            ..name = fieldName
            ..named = true
            ..toSuper = _hasEntity // Use super.id when extending entity
            ..toThis = !_hasEntity; // Use this.id when standalone
        }));
      }
    });
  }

  /// Builds the fromJson factory constructor.
  Constructor _buildFromJson() {
    return Constructor((b) {
      b
        ..name = 'fromJson'
        ..factory = true
        ..requiredParameters.add(Parameter((b) {
          b
            ..name = 'json'
            ..type = refer('Map<String, dynamic>');
        }))
        ..body = Block((b) {
          final constructorArgs = <String, Expression>{};
          for (final entry in properties.entries) {
            final fieldName = StringUtils.toLowerCamelCase(entry.key);
            final fieldType = _inferType(entry.key, entry.value);

            constructorArgs[fieldName] = _buildFieldFromJson(entry.key, fieldType);
          }

          b.addExpression(
            refer(className).newInstance([], constructorArgs).returned,
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
            final fieldName = StringUtils.toLowerCamelCase(entry.key);
            final fieldType = _inferType(entry.key, entry.value);

            final key = literalString(entry.key);
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
            final fieldName = StringUtils.toLowerCamelCase(entry.key);
            args[fieldName] = refer(fieldName).ifNullThen(refer('this.$fieldName'));
          }

          b.addExpression(
            refer(className).newInstance([], args).returned,
          );
        });

      // Add optional parameters
      for (final entry in properties.entries) {
        final fieldName = StringUtils.toLowerCamelCase(entry.key);
        final fieldType = _inferType(entry.key, entry.value);
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

  /// Builds the props getter for EquatableMixin.
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

  /// Builds the stringify getter for EquatableMixin.
  Method _buildStringifyGetter() {
    return Method((b) {
      b
        ..name = 'stringify'
        ..returns = refer('bool')
        ..type = MethodType.getter
        ..annotations.add(refer('override'))
        ..body = Block((b) {
          b.addExpression(literalTrue.returned);
        });
    });
  }

  /// Builds field extraction from JSON.
  Expression _buildFieldFromJson(String fieldName, String fieldType) {
    final baseType = fieldType.replaceAll('?', '');
    final isNullable = fieldType.endsWith('?');
    final jsonAccess = refer('json').index(literalString(fieldName));

    if (isNullable) {
      return jsonAccess.equalTo(literalNull).conditional(
            literalNull,
            _buildCastExpression(jsonAccess, baseType, true),
          );
    }

    return _buildCastExpression(jsonAccess, baseType, false);
  }

  /// Builds a cast expression for a type.
  Expression _buildCastExpression(Expression expression, String type, bool isNullable) {
    switch (type) {
      case 'String':
        return expression.property('toString').call([]);
      case 'int':
        final parsed = refer('int').property('tryParse').call([expression.property('toString').call([])]);
        return isNullable ? parsed : parsed.ifNullThen(literalNum(0));
      case 'double':
        final parsed = refer('double').property('tryParse').call([expression.property('toString').call([])]);
        return isNullable ? parsed : parsed.ifNullThen(literalNum(0.0));
      case 'bool':
        return expression.property('toString').call([]).property('toLowerCase').call([]).equalTo(literalString('true'));
      case 'DateTime':
        final parsed = refer('DateTime').property('tryParse').call([expression.property('toString').call([])]);
        return isNullable ? parsed : parsed.ifNullThen(refer('DateTime').property('now').call([]));
      case 'MultipartFile':
        return expression.asA(refer('MultipartFile'));
      case 'List<dynamic>':
        return expression.asA(refer('List<dynamic>'));
      case 'Map<String, dynamic>':
        return expression.asA(refer('Map<String, dynamic>'));
      default:
        return expression;
    }
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
      final lowerValue = value.toLowerCase();
      if (lowerValue == 'int' || lowerValue == 'integer') return 'int?';
      if (lowerValue == 'double' || lowerValue == 'number' || lowerValue == 'float') return 'double?';
      if (lowerValue == 'bool' || lowerValue == 'boolean') return 'bool?';
      if (lowerValue == 'datetime') return 'DateTime?';
      if (lowerValue == 'file' || lowerValue == 'multipartfile') return 'MultipartFile?';
      // Only check for date/time in name if value is generic 'string'
      if (lowerValue == 'string') {
        if (name.toLowerCase().contains('date') || name.toLowerCase().contains('time')) {
          return 'DateTime?';
        }
        return 'String?';
      }
      // For actual string values (not type hints), check name
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
