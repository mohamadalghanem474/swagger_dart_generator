// -------------------------------------------------------
// CONTROLLERS GENERATOR
// -------------------------------------------------------
import 'dart:convert';
import 'dart:io';

import 'package:swagger_dart_generator/src/utils/utils.dart';

Future<void> generateControllers(
    String path, String package, String outputDir) async {
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
    // final categoryDir = Directory('${baseDir.path}/$categoryName');
    // categoryDir.createSync(recursive: true);

    final filePath = File(
      '${baseDir.path}/${categoryName}_controllers.dart',
    );
    final buffer = StringBuffer();

    // Imports
    buffer.writeln("import 'dart:async';");
    buffer.writeln("import 'package:dio/dio.dart';");
    buffer.writeln("");
    buffer.writeln(
      "import 'package:$package/features/data/repositories/$categoryName/${categoryName}.dart';",
    );

    // Import individual request/response models
    for (final endpointName in endpoints.keys) {
      final snakeName = Utils.toSnakeCase(endpointName);
      buffer.writeln(
        "import 'package:$package/features/data/models/$categoryName/requests/${snakeName}_req.dart';",
      );
      buffer.writeln(
        "import 'package:$package/features/data/models/$categoryName/responses/${snakeName}_res.dart';",
      );
    }

    buffer.writeln("import 'package:injectable/injectable.dart';");
    buffer.writeln("import 'package:mg_sub/mg_sub.dart';\n");

    // Generate Sub classes for each endpoint
    for (final endpointName in endpoints.keys) {
      final controllerName = '${Utils.toPascalCase(endpointName)}Sub';
      final reqClass = '${Utils.toPascalCase(endpointName)}Req';
      final resClass = '${Utils.toPascalCase(endpointName)}Res';
      final methodName = Utils.toLowerCamelCase(endpointName);

      buffer.writeln('@injectable');
      buffer.writeln(
        'class $controllerName extends Sub<SubState<$resClass>> {',
      );
      buffer.writeln(
        '  final ${category}Repository _${Utils.toLowerCamelCase(category)}Repository;',
      );
      buffer.writeln('  CancelToken? _cancelToken;\n');
      buffer.writeln(
        '  $controllerName(@factoryParam String id, this._${Utils.toLowerCamelCase(category)}Repository) : super(SubState.initial(), id);\n',
      );
      buffer.writeln(
        '  Future<void> call({$reqClass? req, bool cancel = false}) async {',
      );
      buffer.writeln('    if (cancel) {');
      buffer.writeln('      _cancelToken?.cancel();');
      buffer.writeln('    } else {');
      buffer.writeln('      if (state.isLoading) return;');
      buffer.writeln('    }');
      buffer.writeln('    ');
      buffer.writeln('    _cancelToken = CancelToken();');
      buffer.writeln('    emit(SubState.loading());');
      buffer.writeln(
        '    final result = await _${Utils.toLowerCamelCase(category)}Repository.$methodName(req?? $reqClass(), cancelToken: _cancelToken);',
      );
      buffer.writeln(
        '    result.fold((l) => emit(SubState.failure(l.message)), (data) => emit(SubState.success(data)));',
      );
      buffer.writeln('  }');
      buffer.writeln('  ');
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
