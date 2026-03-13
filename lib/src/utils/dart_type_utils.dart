/// Utility class for converting Swagger/OpenAPI types to Dart types.
class DartTypeUtils {
  DartTypeUtils._();

  /// Converts a Swagger type to a Dart type string.
  ///
  /// [swaggerType] - The Swagger type (string, integer, number, boolean, array, object)
  /// [format] - Optional format (e.g., date-time, email, uuid)
  /// [isRequired] - Whether the field is required
  ///
  /// Returns the corresponding Dart type.
  static String swaggerToDartType(
    String? swaggerType, {
    String? format,
    bool isRequired = false,
  }) {
    String dartType;

    switch (swaggerType) {
      case 'string':
        dartType = 'String';
      case 'integer':
        dartType = 'int';
      case 'number':
        dartType = 'double';
      case 'boolean':
        dartType = 'bool';
      case 'array':
        dartType = 'List';
      case 'object':
        dartType = 'Map<String, dynamic>';
      case 'file':
        dartType = 'MultipartFile';
      default:
        dartType = 'dynamic';
    }

    return isRequired ? dartType : '$dartType?';
  }

  /// Gets a default value for a Dart type.
  ///
  /// Used for generating examples in documentation.
  static Object? getDefaultValue(String dartType) {
    return switch (dartType.replaceAll('?', '')) {
      'String' => "''",
      'int' => 0,
      'double' => 0.0,
      'bool' => false,
      'List' => const <dynamic>[],
      'Map<String, dynamic>' => const <String, dynamic>{},
      _ => null,
    };
  }

  /// Checks if a Dart type is nullable.
  static bool isNullable(String dartType) {
    return dartType.endsWith('?');
  }

  /// Gets the non-nullable version of a type.
  static String getNonNullable(String dartType) {
    return dartType.replaceAll('?', '');
  }
}
