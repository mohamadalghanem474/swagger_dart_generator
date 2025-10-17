// -------------------------------------------------------
// CONTROLLERS GENERATOR
// -------------------------------------------------------
import 'dart:convert';
import 'dart:io';

import 'package:swagger_dart_generator/src/utils/utils.dart';

Future<void> generateControllers(String path, String package, String outputDir, bool replace) async {
  final file = File(path);
  if (!file.existsSync()) {
    print('❌ $path not found!');
    return;
  }

  final jsonStr = await file.readAsString();
  final map = json.decode(jsonStr) as Map<String, dynamic>;

  final baseDir = Directory('$outputDir/controllers');
  baseDir.createSync(recursive: true);

  for (final categoryEntry in map.entries) {
    final category = categoryEntry.key;
    final endpoints = categoryEntry.value as Map<String, dynamic>;
    final categoryName = Utils.toSnakeCase(category);

    final filePath = File(
      '${baseDir.path}/${categoryName}_controllers.dart',
    );

    // Check if file exists and replace flag
    if (filePath.existsSync() && !replace) {
      print('⏭️  Skipped: ${filePath.path} already exists');
      continue;
    }

    final buffer = StringBuffer();

    // Imports - matching your exact structure
    buffer.writeln("import 'dart:async';");
    buffer.writeln("import 'package:$package/api.dart';");
    buffer.writeln("import 'package:dio/dio.dart';");

    // Import response models only (matching your example)
    for (final endpointName in endpoints.keys) {
      final snakeName = Utils.toSnakeCase(endpointName);
      buffer.writeln(
        "import 'package:$package/data/models/$categoryName/responses/${snakeName}_res.dart';",
      );
    }

    // Import request models only (matching your example)
    for (final endpointName in endpoints.keys) {
      final snakeName = Utils.toSnakeCase(endpointName);
      buffer.writeln(
        "import 'package:$package/data/models/$categoryName/requests/${snakeName}_req.dart';",
      );
    }

    buffer.writeln("import 'package:injectable/injectable.dart';");
    buffer.writeln("import 'package:sub_state/sub_state.dart';");
    buffer.writeln("import 'package:use/use.dart';\n");

    // Generate Use classes for each endpoint - EXACTLY matching your structure
    for (final endpointName in endpoints.keys) {
      final controllerName = 'Use${Utils.toPascalCase(endpointName)}';
      final reqClass = '${Utils.toPascalCase(endpointName)}Req';
      final resClass = '${Utils.toPascalCase(endpointName)}Res';
      final methodName = Utils.toLowerCamelCase(endpointName);
      final repositoryName = Utils.toLowerCamelCase(category);

      buffer.writeln('@injectable');
      buffer.writeln(
        'class $controllerName extends Use<SubState<$resClass>> {',
      );
      buffer.writeln('  final Api _api;');
      buffer.writeln('  CancelToken? _cancelToken;\n');
      buffer.writeln(
        '  $controllerName(@factoryParam String? id, this._api) : super(SubState.initial(), id: id);\n',
      );
      buffer.writeln(
        '  Future<void> call({$reqClass? req, bool cancel = false}) async {',
      );
      buffer.writeln('    if (cancel) {');
      buffer.writeln('      _cancelToken?.cancel();');
      buffer.writeln('    } else {');
      buffer.writeln('      if (state.isLoading) return;');
      buffer.writeln('    }');
      buffer.writeln('');
      buffer.writeln('    _cancelToken = CancelToken();');
      buffer.writeln('    emit(SubState.loading());');
      buffer.writeln(
        '    final result = await _api.repository.$repositoryName.$methodName(req ?? $reqClass(), cancelToken: _cancelToken);',
      );
      buffer.writeln(
        '    result.fold((l) => emit(SubState.failure(l.message)), (data) => emit(SubState.success(data)));',
      );
      buffer.writeln('  }');
      buffer.writeln('');
      buffer.writeln('  @override');
      buffer.writeln('  void dispose() {');
      buffer.writeln('    _cancelToken?.cancel();');
      buffer.writeln('    _cancelToken = null;');
      buffer.writeln('    super.dispose();');
      buffer.writeln('  }');
      buffer.writeln('}\n');
    }

    await filePath.writeAsString(buffer.toString());
    print('✅ Created: ${filePath.path}');
  }
}
