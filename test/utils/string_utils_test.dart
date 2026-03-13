import 'package:test/test.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

void main() {
  group('StringUtils', () {
    test('toPascalCase converts snake_case to PascalCase', () {
      expect(StringUtils.toPascalCase('auth_login'), equals('AuthLogin'));
      expect(StringUtils.toPascalCase('user-profile'), equals('UserProfile'));
      expect(
          StringUtils.toPascalCase('product detail'), equals('ProductDetail'));
    });

    test('toLowerCamelCase converts string to lowerCamelCase', () {
      expect(StringUtils.toLowerCamelCase('auth_login'), equals('authLogin'));
      expect(
          StringUtils.toLowerCamelCase('UserProfile'), equals('userProfile'));
    });

    test('toSnakeCase converts PascalCase/camelCase to snake_case', () {
      expect(StringUtils.toSnakeCase('AuthLogin'), equals('auth_login'));
      expect(StringUtils.toSnakeCase('userProfile'), equals('user_profile'));
      expect(StringUtils.toSnakeCase('APIClient'), equals('a_p_i_client'));
    });

    test('capitalize capitalizes first letter', () {
      expect(StringUtils.capitalize('auth'), equals('Auth'));
      expect(StringUtils.capitalize(''), equals(''));
    });
  });
}
