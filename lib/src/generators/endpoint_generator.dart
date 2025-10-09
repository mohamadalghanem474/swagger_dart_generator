// -------------------------------------------------------
// ENDPOINTS GENERATOR
// -------------------------------------------------------
import 'dart:convert';
import 'dart:io';

import 'package:swagger_dart_generator/src/utils/utils.dart';

Future<void> generateEndpoints(
    String path, String package, String outputDir) async {
  final file = File(path);
  if (!file.existsSync()) {
    print('❌ $path not found!');
    return;
  }
  final jsonStr = await file.readAsString();

  final map = json.decode(jsonStr) as Map<String, dynamic>;

  final buffer = StringBuffer();

  // Main EndPoints class
  buffer.writeln("class EndPoints {");
  buffer.writeln("  static const baseUrl = \"https://api.$package.com/\";");
  map.forEach((category, _) {
    final className = Utils.capitalize(category);
    buffer.writeln(
      "  static const ${Utils.toLowerCamelCase(category)} = _$className();",
    );
  });
  buffer.writeln("}\n");

  // Nested classes
  map.forEach((category, endpoints) {
    final className = Utils.capitalize(category);
    buffer.writeln("class _$className {");
    buffer.writeln("  const _$className();");

    (endpoints as Map<String, dynamic>).forEach((endpointName, endpointData) {
      final fieldName = Utils.toLowerCamelCase(endpointName);
      final path = endpointData['path'] as String;
      buffer.writeln('  final String $fieldName = "$path";');
    });

    buffer.writeln("}\n");
  });

  // Write output to a Dart file
  final outFile = File('$outputDir/end_points.dart');
  await outFile.writeAsString(buffer.toString());

  print("✅ endpoint.dart generated successfully!");
}
