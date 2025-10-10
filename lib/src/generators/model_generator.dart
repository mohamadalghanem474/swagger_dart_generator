// -------------------------------------------------------
// MODELS GENERATOR
// -------------------------------------------------------
import 'dart:convert';
import 'dart:io';

import 'package:swagger_dart_generator/src/utils/utils.dart';

Future<void> generateModels(
    String path, String package, String outputDir) async {
  final file = File(path);
  if (!file.existsSync()) {
    print('❌ $path not found!');
    return;
  }

  final jsonStr = await file.readAsString();
  final endpointsMap = json.decode(jsonStr) as Map<String, dynamic>;

  final baseDir = Directory('$outputDir/lib/features/data/models');
  if (!baseDir.existsSync()) {
    baseDir.createSync(recursive: true);
  }

  // Generate request and response JSON files for each endpoint
  for (final categoryEntry in endpointsMap.entries) {
    final category = categoryEntry.key;
    final endpoints = categoryEntry.value as Map<String, dynamic>;
    final categoryName = Utils.toSnakeCase(category);

    final requestsDir = Directory('${baseDir.path}/$categoryName/requests');
    final responsesDir = Directory('${baseDir.path}/$categoryName/responses');

    requestsDir.createSync(recursive: true);
    responsesDir.createSync(recursive: true);

    for (final endpointEntry in endpoints.entries) {
      final endpointName = endpointEntry.key;
      final endpointData = endpointEntry.value as Map<String, dynamic>;
      final snakeName = Utils.toSnakeCase(endpointName);

      // Generate Request JSON file
      final reqFile = File('${requestsDir.path}/${snakeName}_req.dto.json');

      // Build request JSON structure - only include non-empty objects
      final requestJson = <String, dynamic>{};

      final query = endpointData['query'] as Map<String, dynamic>? ?? {};
      final params = endpointData['params'] as Map<String, dynamic>? ?? {};
      final body = endpointData['body'];

      // Only add query if it's not empty
      if (query.isNotEmpty) {
        requestJson['query'] = query;
      }

      // Only add params if it's not empty
      if (params.isNotEmpty) {
        requestJson['params'] = params;
      }

      // Only add body if it exists and is not empty
      if (body is Map<String, dynamic> && body.isNotEmpty) {
        requestJson['body'] = body;
      } else if (body != null && body is! Map) {
        // Handle cases where body might be a string or other type
        requestJson['body'] = body;
      }

      // Write formatted JSON to file
      final reqJsonString = JsonEncoder.withIndent('  ').convert(requestJson);
      await reqFile.writeAsString(reqJsonString);
      print('✅ Created: ${reqFile.path}');

      // Generate Response JSON file
      final resFile = File('${responsesDir.path}/${snakeName}_res.dto.json');

      // Build response JSON structure - handle all data types
      final responseData = endpointData['response'];
      dynamic responseJson;

      if (responseData is Map<String, dynamic>) {
        responseJson = responseData;
      } else if (responseData is List) {
        responseJson = responseData;
      } else {
        responseJson = {}; // Default to empty object if null or unknown type
      }

      // Write formatted JSON to file
      final resJsonString = JsonEncoder.withIndent('  ').convert(responseJson);
      await resFile.writeAsString(resJsonString);
      print('✅ Created: ${resFile.path}');
    }
  }

  print("🎉 All JSON DTO files generated successfully!");
}
