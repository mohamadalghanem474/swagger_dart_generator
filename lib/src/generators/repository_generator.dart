// -------------------------------------------------------
// REPOSITORIES GENERATOR
// -------------------------------------------------------
import 'dart:convert';
import 'dart:io';

import 'package:swagger_dart_generator/src/utils/utils.dart';

Future<void> generateRepositories(
    String path, String package, String outputDir) async {
  final file = File(path);
  if (!file.existsSync()) {
    print('❌ $path not found!');
    return;
  }

  final jsonStr = await file.readAsString();
  final map = json.decode(jsonStr) as Map<String, dynamic>;

  final baseDir = Directory('$outputDir/lib/features/data/repositories');
  baseDir.createSync(recursive: true);

  for (final categoryEntry in map.entries) {
    final category = categoryEntry.key;
    final endpoints = categoryEntry.value as Map<String, dynamic>;
    final categoryName = Utils.toSnakeCase(category);
    final categoryDir = Directory('${baseDir.path}/$categoryName');
    categoryDir.createSync(recursive: true);

    final abstractFile = File('${categoryDir.path}/$categoryName.dart');
    final implFile = File(
      '${categoryDir.path}/${categoryName}_repository_impl.dart',
    );

    final abstractBuffer = StringBuffer();
    final implBuffer = StringBuffer();

    // ---------- ABSTRACT REPOSITORY ----------
    abstractBuffer.writeln("import 'package:dartz/dartz.dart';");
    abstractBuffer.writeln("import 'package:dio/dio.dart';");
    abstractBuffer.writeln(
      "import 'package:$package/core/errors/failures.dart';",
    );

    // Import individual request models
    for (final endpointName in endpoints.keys) {
      final snakeName = Utils.toSnakeCase(endpointName);
      abstractBuffer.writeln(
        "import 'package:$package/features/data/models/$categoryName/requests/${snakeName}_req.dart';",
      );
    }

    // Import individual response models
    for (final endpointName in endpoints.keys) {
      final snakeName = Utils.toSnakeCase(endpointName);
      abstractBuffer.writeln(
        "import 'package:$package/features/data/models/$categoryName/responses/${snakeName}_res.dart';",
      );
    }

    abstractBuffer.writeln('');
    abstractBuffer.writeln('abstract class ${category}Repository {');

    for (final endpointName in endpoints.keys) {
      final req = '${Utils.toPascalCase(endpointName)}Req';
      final res = '${Utils.toPascalCase(endpointName)}Res';
      final methodName = Utils.toLowerCamelCase(endpointName);
      abstractBuffer.writeln(
        '  Future<Either<Failure, $res>> $methodName($req req, {CancelToken? cancelToken});',
      );
    }

    abstractBuffer.writeln('}');
    await abstractFile.writeAsString(abstractBuffer.toString());
    print('✅ Created: ${abstractFile.path}');

    // ---------- IMPLEMENTATION ----------
    implBuffer.writeln("import 'package:dartz/dartz.dart';");
    implBuffer.writeln("import 'package:dio/dio.dart';");
    implBuffer.writeln("import 'package:$package/core/errors/failures.dart';");
    implBuffer.writeln(
      "import 'package:$package/features/data/repositories/$categoryName/$categoryName.dart';",
    );
    implBuffer.writeln(
      "import 'package:$package/features/data/datasources/$categoryName/${categoryName}_remote_datasource.dart';",
    );

    // Import individual request models
    for (final endpointName in endpoints.keys) {
      final snakeName = Utils.toSnakeCase(endpointName);
      implBuffer.writeln(
        "import 'package:$package/features/data/models/$categoryName/requests/${snakeName}_req.dart';",
      );
    }

    // Import individual response models
    for (final endpointName in endpoints.keys) {
      final snakeName = Utils.toSnakeCase(endpointName);
      implBuffer.writeln(
        "import 'package:$package/features/data/models/$categoryName/responses/${snakeName}_res.dart';",
      );
    }

    implBuffer.writeln("import 'package:injectable/injectable.dart';\n");

    implBuffer.writeln(
      '@LazySingleton(as: ${category}Repository, env: [Environment.test, Environment.dev, Environment.prod])\nclass ${category}RepositoryImpl implements ${category}Repository {',
    );
    implBuffer.writeln('  final ${category}RemoteDataSource _dataSource;\n');
    implBuffer.writeln('  ${category}RepositoryImpl(this._dataSource);\n');

    for (final endpointName in endpoints.keys) {
      final req = '${Utils.toPascalCase(endpointName)}Req';
      final res = '${Utils.toPascalCase(endpointName)}Res';
      final methodName = Utils.toLowerCamelCase(endpointName);

      implBuffer.writeln('  @override');
      implBuffer.writeln(
        '  Future<Either<Failure, $res>> $methodName($req req, {CancelToken? cancelToken}) async {',
      );
      implBuffer.writeln('    try {');
      implBuffer.writeln(
        '      final result = await _dataSource.$methodName(req, cancelToken: cancelToken);',
      );
      implBuffer.writeln('      return Right(result);');
      implBuffer.writeln('    } catch (e, stackTrace) {');
      implBuffer.writeln('      return Left(Failure.handle(e, stackTrace));');
      implBuffer.writeln('    }');
      implBuffer.writeln('  }\n');
    }

    implBuffer.writeln('}');
    await implFile.writeAsString(implBuffer.toString());
    print('✅ Created: ${implFile.path}');
  }
}
