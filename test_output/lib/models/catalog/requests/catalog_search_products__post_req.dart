import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SearchProductsPostRequest extends Equatable {
  const SearchProductsPostRequest({
    this.model,
    this.command,
  });

  final String? model;

  final String? command;

  static SearchProductsPostRequest fromJson(Map<String, dynamic> json) {
    return SearchProductsPostRequest(
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

  SearchProductsPostRequest copyWith({
    String? model,
    String? command,
  }) {
    return SearchProductsPostRequest(
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
