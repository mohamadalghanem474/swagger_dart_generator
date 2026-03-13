import 'dart:io';

import 'package:yaml/yaml.dart';
import 'package:yaml_edit/yaml_edit.dart';

/// Generates and updates pubspec.yaml for the generated package.
class PubspecGenerator {
  final String packageName;
  final String outputDir;

  PubspecGenerator({
    required this.packageName,
    required this.outputDir,
  });

  /// Creates or updates the pubspec.yaml file.
  Future<void> generate() async {
    final pubspecFile = File('$outputDir/pubspec.yaml');

    final pubspec = {
      'name': packageName,
      'description': 'Auto-generated data layer package for $packageName API',
      'version': '1.0.0',
      'publish_to': 'none',
      'environment': {
        'sdk': '>=3.0.0 <4.0.0',
      },
      'dependencies': _buildDependencies(),
      'dev_dependencies': _buildDevDependencies(),
    };

    final yamlEditor = YamlEditor('');
    yamlEditor.update([], pubspec);

    await pubspecFile.writeAsString(yamlEditor.toString());
  }

  /// Builds the dependencies section.
  Map<String, dynamic> _buildDependencies() {
    return {
      'dio': '^5.4.0',
      'dartz': '^0.10.1',
      'equatable': '^2.0.5',
      'get_it': '^8.0.0',
    };
  }

  /// Builds the dev_dependencies section.
  Map<String, dynamic> _buildDevDependencies() {
    return {
      'flutter_lints': '^5.0.0',
      'test': '^1.24.0',
    };
  }

  /// Adds a dependency to an existing pubspec.yaml.
  Future<void> addDependency(
    String name,
    String version, {
    bool isDev = false,
  }) async {
    final pubspecFile = File('$outputDir/pubspec.yaml');
    if (!pubspecFile.existsSync()) {
      throw FileSystemException('pubspec.yaml not found', pubspecFile.path);
    }

    final content = await pubspecFile.readAsString();
    final yamlEditor = YamlEditor(content);

    final section = isDev ? 'dev_dependencies' : 'dependencies';
    yamlEditor.update([section, name], version);

    await pubspecFile.writeAsString(yamlEditor.toString());
  }

  /// Reads the current pubspec.yaml as a map.
  Future<Map<String, dynamic>?> read() async {
    final pubspecFile = File('$outputDir/pubspec.yaml');
    if (!pubspecFile.existsSync()) return null;

    final content = await pubspecFile.readAsString();
    final yaml = loadYaml(content);

    if (yaml is! YamlMap) return null;
    return _yamlMapToMap(yaml);
  }

  /// Converts a YamlMap to a regular Map.
  Map<String, dynamic> _yamlMapToMap(YamlMap yaml) {
    final result = <String, dynamic>{};
    yaml.forEach((key, value) {
      if (value is YamlMap) {
        result[key.toString()] = _yamlMapToMap(value);
      } else if (value is YamlList) {
        result[key.toString()] = value.toList();
      } else {
        result[key.toString()] = value;
      }
    });
    return result;
  }
}
