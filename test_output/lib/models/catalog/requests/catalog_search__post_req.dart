import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SearchPostRequest extends Equatable {
  const SearchPostRequest({
    this.model,
    this.command,
  });

  final String? model;

  final String? command;

  static SearchPostRequest fromJson(Map<String, dynamic> json) {
    return SearchPostRequest(
      model: json['model'] == null ? null : (json['model'] as String),
      command: json['command'] == null ? null : (json['command'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'model': model,
      'command': command,
    };
  }

  SearchPostRequest copyWith({
    String? model,
    String? command,
  }) {
    return SearchPostRequest(
      model: model ?? this.model,
      command: command ?? this.command,
    );
  }

  @override
  List<Object?> get props {
    return [
      model,
      command,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
