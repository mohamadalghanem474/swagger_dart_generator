import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class InfoPostResponse extends Equatable {
  const InfoPostResponse({
    this.model,
    this.errors,
  });

  final String? model;

  final List<String>? errors;

  static InfoPostResponse fromJson(Map<String, dynamic> json) {
    return InfoPostResponse(
      model: json['model'] == null ? null : (json['model'] as String),
      errors: json['errors'] == null ? null : json['errors'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'model': model,
      'errors': errors,
    };
  }

  InfoPostResponse copyWith({
    String? model,
    List<String>? errors,
  }) {
    return InfoPostResponse(
      model: model ?? this.model,
      errors: errors ?? this.errors,
    );
  }

  @override
  List<Object?> get props {
    return [
      model,
      errors,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
