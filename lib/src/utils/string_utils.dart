/// Utility class for string case conversions.
///
/// Provides methods to convert between different naming conventions
/// commonly used in Dart/Flutter development.
class StringUtils {
  StringUtils._();

  /// Converts a string to PascalCase.
  ///
  /// Example: `auth_login` → `AuthLogin`
  static String toPascalCase(String input) {
    if (input.isEmpty) return '';
    // Handle camelCase or PascalCase inputs by inserting underscores before capitals
    final snake = toSnakeCase(input);
    return snake.split(RegExp(r'[_\-\s]+')).where((word) => word.isNotEmpty).map((word) => word[0].toUpperCase() + word.substring(1).toLowerCase()).join();
  }

  /// Converts a string to lowerCamelCase.
  ///
  /// Example: `auth_login` → `authLogin`
  static String toLowerCamelCase(String input) {
    if (input.isEmpty) return '';
    final pascal = toPascalCase(input);
    return pascal[0].toLowerCase() + pascal.substring(1);
  }

  /// Converts a string to snake_case.
  ///
  /// Example: `AuthLogin` → `auth_login`
  static String toSnakeCase(String input) {
    if (input.isEmpty) return '';
    final buffer = StringBuffer();
    for (var i = 0; i < input.length; i++) {
      final char = input[i];
      if (char.toUpperCase() == char && i != 0 && input[i - 1] != '_') {
        buffer.write('_');
      }
      buffer.write(char.toLowerCase());
    }
    return buffer.toString();
  }

  /// Capitalizes the first letter of a string.
  ///
  /// Example: `auth` → `Auth`
  static String capitalize(String input) {
    if (input.isEmpty) return input;
    return input[0].toUpperCase() + input.substring(1);
  }

  /// Converts a string to kebab-case.
  ///
  /// Example: `authLogin` → `auth-login`
  static String toKebabCase(String input) {
    return toSnakeCase(input).replaceAll('_', '-');
  }

  /// Removes special characters and keeps only alphanumeric and underscores.
  static String sanitize(String input) {
    return input.replaceAll(RegExp(r'[^a-zA-Z0-9_]'), '_');
  }
}
