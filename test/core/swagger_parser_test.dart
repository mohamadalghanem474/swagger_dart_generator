import 'dart:io';
import 'package:test/test.dart';
import 'package:swagger_dart_generator/src/core/swagger_parser.dart';

void main() {
  group('SwaggerParser', () {
    late String tempPath;

    setUp(() {
      tempPath = 'test_swagger.json';
    });

    tearDown(() {
      final file = File(tempPath);
      if (file.existsSync()) file.deleteSync();
    });

    test('throws FileSystemException when file not found', () async {
      final parser = SwaggerParser(swaggerPath: 'non_existent.json', outputDir: '.');
      expect(() => parser.parse(), throwsA(isA<FileSystemException>()));
    });

    test('throws FormatException when JSON is invalid', () async {
      File(tempPath).writeAsStringSync('{ invalid json }');
      final parser = SwaggerParser(swaggerPath: tempPath, outputDir: '.');
      expect(() => parser.parse(), throwsA(isA<FormatException>()));
    });

    test('parses basic swagger file successfully', () async {
      final content = '''
      {
        "openapi": "3.0.0",
        "paths": {
          "/auth/login": {
            "post": {
              "tags": ["Auth"],
              "responses": {
                "200": {
                  "description": "Success"
                }
              }
            }
          }
        }
      }
      ''';
      File(tempPath).writeAsStringSync(content);
      final parser = SwaggerParser(swaggerPath: tempPath, outputDir: '.');
      final result = await parser.parse();
      
      expect(result.length, equals(1));
      expect(result.first.name, equals('Auth'));
      expect(result.first.endpoints.first.path, equals('/auth/login'));
    });
  });
}
