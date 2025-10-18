// -------------------------------------------------------
// MODELS GENERATOR
// -------------------------------------------------------
import 'dart:convert';
import 'dart:io';

import 'package:swagger_dart_generator/src/utils/utils.dart';

Future<void> generateModels(String path, String package, String outputDir) async {
  final file = File(path);
  final jsonStr = await file.readAsString();
  final endpointsMap = json.decode(jsonStr) as Map<String, dynamic>;

  final baseDir = Directory('$outputDir/lib/data/models');
  if (!baseDir.existsSync()) {
    baseDir.createSync(recursive: true);
  }
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
      final reqFile = File('${requestsDir.path}/${snakeName}_req.dto.json');
      final requestJson = <String, dynamic>{};
      final query = endpointData['query'] as Map<String, dynamic>? ?? {};
      final params = endpointData['params'] as Map<String, dynamic>? ?? {};
      final body = endpointData['body'];
      if (query.isNotEmpty) {
        requestJson['query'] = query;
      }
      if (params.isNotEmpty) {
        requestJson['params'] = params;
      }
      if (body is Map<String, dynamic> && body.isNotEmpty) {
        requestJson['body'] = body;
      } else if (body != null && body is! Map) {
        requestJson['body'] = body;
      }
      final reqJsonString = JsonEncoder.withIndent('  ').convert(requestJson);
      await reqFile.create(recursive: true);
      await reqFile.writeAsString(reqJsonString);
      final resFile = File('${responsesDir.path}/${snakeName}_res.dto.json');
      final responseData = endpointData['response'];
      dynamic responseJson;
      if (responseData is Map<String, dynamic>) {
        responseJson = responseData;
      } else if (responseData is List) {
        responseJson = responseData;
      } else {
        responseJson = {};
      }
      final resJsonString = JsonEncoder.withIndent('  ').convert(responseJson);
      resFile.create(recursive: true);
      await resFile.writeAsString(resJsonString);
    }
  }
}
