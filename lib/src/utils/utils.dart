// -------------------------------------------------------
// HELPERS
// -------------------------------------------------------
abstract class Utils {
  static String toPascalCase(String input) => input
      .split(RegExp(r'_|-'))
      .map((w) => w.isEmpty ? '' : w[0].toUpperCase() + w.substring(1))
      .join();

  static String toLowerCamelCase(String input) {
    final pascal = toPascalCase(input);
    return pascal.isEmpty ? '' : pascal[0].toLowerCase() + pascal.substring(1);
  }

  static String toSnakeCase(String input) {
    final buffer = StringBuffer();
    for (var i = 0; i < input.length; i++) {
      final char = input[i];
      if (char.toUpperCase() == char && i != 0) buffer.write('_');
      buffer.write(char.toLowerCase());
    }
    return buffer.toString();
  }

  static String capitalize(String s) =>
      s.isEmpty ? s : s[0].toUpperCase() + s.substring(1);
}
