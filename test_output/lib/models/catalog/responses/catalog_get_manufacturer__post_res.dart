import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetManufacturerPostResponse extends Equatable {
  const GetManufacturerPostResponse({
    this.template_view_path,
    this.manufacturer_model,
  });

  final String? template_view_path;

  final String? manufacturer_model;

  static GetManufacturerPostResponse fromJson(Map<String, dynamic> json) {
    return GetManufacturerPostResponse(
      template_view_path: json['template_view_path'] == null
          ? null
          : (json['template_view_path'] as String),
      manufacturer_model: json['manufacturer_model'] == null
          ? null
          : (json['manufacturer_model'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'template_view_path': template_view_path,
      'manufacturer_model': manufacturer_model,
    };
  }

  GetManufacturerPostResponse copyWith({
    String? template_view_path,
    String? manufacturer_model,
  }) {
    return GetManufacturerPostResponse(
      template_view_path: template_view_path ?? this.template_view_path,
      manufacturer_model: manufacturer_model ?? this.manufacturer_model,
    );
  }

  @override
  List<Object?> get props {
    return [
      template_view_path,
      manufacturer_model,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
