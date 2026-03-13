import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetCategoryPostResponse extends Equatable {
  const GetCategoryPostResponse({
    this.template_view_path,
    this.category_model_dto,
  });

  final String? template_view_path;

  final String? category_model_dto;

  static GetCategoryPostResponse fromJson(Map<String, dynamic> json) {
    return GetCategoryPostResponse(
      template_view_path: json['template_view_path'] == null
          ? null
          : (json['template_view_path'] as String),
      category_model_dto: json['category_model_dto'] == null
          ? null
          : (json['category_model_dto'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'template_view_path': template_view_path,
      'category_model_dto': category_model_dto,
    };
  }

  GetCategoryPostResponse copyWith({
    String? template_view_path,
    String? category_model_dto,
  }) {
    return GetCategoryPostResponse(
      template_view_path: template_view_path ?? this.template_view_path,
      category_model_dto: category_model_dto ?? this.category_model_dto,
    );
  }

  @override
  List<Object?> get props {
    return [
      template_view_path,
      category_model_dto,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
