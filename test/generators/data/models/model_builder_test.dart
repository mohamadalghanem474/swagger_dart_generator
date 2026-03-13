import 'package:test/test.dart';
import 'package:swagger_dart_generator/src/generators/data/models/model_builder.dart';

void main() {
  group('ModelBuilder', () {
    test('builds a standalone model with fromJson and toJson', () {
      final properties = {
        'id': 'int',
        'name': 'string',
        'is_active': 'boolean',
      };

      final builder = ModelBuilder(
        className: 'UserModel',
        properties: properties,
      );

      final code = builder.build();

      expect(code, contains('class UserModel extends Equatable'));
      expect(code, contains('final int? id;'));
      expect(code, contains('final String? name;'));
      expect(code, contains('final bool? isActive;'));
      expect(code,
          contains('factory UserModel.fromJson(Map<String, dynamic> json)'));
      expect(code, contains('Map<String, dynamic> toJson()'));
      expect(code, contains('UserModel copyWith({'));
      expect(code, contains('List<Object?> get props'));

      // Verify no freezed/json_serializable annotations
      expect(code, isNot(contains('@freezed')));
      expect(code, isNot(contains('@JsonSerializable')));
    });

    test('builds a model extending an entity', () {
      final properties = {
        'id': 'int',
        'name': 'string',
      };

      final builder = ModelBuilder(
        className: 'UserModel',
        entityClassName: 'UserEntity',
        entityImportPath: 'package:app/domain/entities/user_entity.dart',
        properties: properties,
      );

      final code = builder.build();

      expect(code, contains('class UserModel extends UserEntity'));
      expect(code,
          contains("import 'package:app/domain/entities/user_entity.dart'"));
      expect(code, contains('Map<String, dynamic> toJson()'));

      // Fields should not be redefined in the model when extending entity
      expect(code, isNot(contains('final int id;')));
    });
  });
}
