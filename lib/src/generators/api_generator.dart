import 'dart:convert';
import 'dart:io';
import 'package:swagger_dart_generator/src/utils/utils.dart';

Future<void> generateApi(String path, String package, String outputDir) async {
  final file = File(path);
  if (!file.existsSync()) {
    print('❌ $path not found!');
    return;
  }
  final jsonStr = await file.readAsString();
  final map = json.decode(jsonStr) as Map<String, dynamic>;
  final dir = Directory('$outputDir/lib/');
  dir.createSync(recursive: true);
  final fileOut = File('${dir.path}/$package.dart');
  final buffer = StringBuffer();
  buffer.writeln("import 'package:dio/dio.dart';");
  buffer.writeln("import 'package:$package/failure.dart';");
  for (final categoryEntry in map.entries) {
    final category = categoryEntry.key;
    final categoryName = Utils.toSnakeCase(category);
    buffer.writeln(
      "import 'package:$package/data/datasources/$categoryName/${categoryName}.dart';",
    );
    buffer.writeln(
      "import 'package:$package/data/datasources/$categoryName/${categoryName}_remote_datasource_impl.dart';",
    );
    buffer.writeln(
      "import 'package:$package/data/repositories/$categoryName/${categoryName}.dart';",
    );
    buffer.writeln(
      "import 'package:$package/data/repositories/$categoryName/${categoryName}_repository_impl.dart';",
    );
  }
  final className = Utils.toPascalCase(package);
  buffer.writeln('class $className {');
  buffer.writeln('  static $className? _instance;');
  buffer.writeln('  final Dio _dio;');
  buffer.writeln('  final Failure mainFailure;');
  buffer.writeln('  $className._internal(this._dio, this.mainFailure);');
  buffer.writeln('  static $className getInstance(Dio dio, Failure mainFailure) => _instance ??= $className._internal(dio, mainFailure);\n');
  buffer.writeln('  Repository? _repository;');
  buffer.writeln('  Repository get repository => _repository ??= Repository.getInstance(_dio, mainFailure);');
  buffer.writeln('}\n');
  buffer.writeln('class Repository {');
  buffer.writeln('  static Repository? _instance;');
  buffer.writeln('  final Dio _dio;');
  buffer.writeln('  final Failure mainFailure;');
  buffer.writeln('  Repository._internal(this._dio, this.mainFailure);');
  buffer.writeln('  static Repository getInstance(Dio dio, Failure mainFailure) => _instance ??= Repository._internal(dio, mainFailure);\n');
  for (final categoryEntry in map.entries) {
    final category = categoryEntry.key;
    final camelName = Utils.toLowerCamelCase(category);
    buffer.writeln(
      '  ${category}Repository? _$camelName;',
    );
    buffer.writeln(
      '  ${category}Repository get $camelName => _$camelName ??= ${category}RepositoryImpl(DataSource.getInstance(_dio).$camelName, mainFailure);',
    );
  }

  buffer.writeln('}\n');
  buffer.writeln('class DataSource {');
  buffer.writeln('  static DataSource? _instance;');
  buffer.writeln('  final Dio _dio;');
  buffer.writeln('  DataSource._internal(this._dio);');
  buffer.writeln('  static DataSource getInstance(Dio dio) => _instance ??= DataSource._internal(dio);\n');
  for (final categoryEntry in map.entries) {
    final category = categoryEntry.key;
    final camelName = Utils.toLowerCamelCase(category);
    buffer.writeln(
      '  ${category}DataSource? _$camelName;',
    );
    buffer.writeln(
      '  ${category}DataSource get $camelName => _$camelName ??= ${category}RemoteDataSourceImpl(_dio);',
    );
  }
  buffer.writeln('}');
  await fileOut.writeAsString(buffer.toString());
}
