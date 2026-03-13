import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SaveEditAddressPostResponse extends Equatable {
  const SaveEditAddressPostResponse({
    this.redirect,
    this.selected_id,
    this.update_section_model,
  });

  final String? redirect;

  final int? selected_id;

  final DateTime? update_section_model;

  static SaveEditAddressPostResponse fromJson(Map<String, dynamic> json) {
    return SaveEditAddressPostResponse(
      redirect: json['redirect'] == null ? null : (json['redirect'] as String),
      selected_id:
          json['selected_id'] == null ? null : (json['selected_id'] as int),
      update_section_model: json['update_section_model'] == null
          ? null
          : DateTime.parse((json['update_section_model'] as String)),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'redirect': redirect,
      'selected_id': selected_id,
      'update_section_model': update_section_model?.toIso8601String(),
    };
  }

  SaveEditAddressPostResponse copyWith({
    String? redirect,
    int? selected_id,
    DateTime? update_section_model,
  }) {
    return SaveEditAddressPostResponse(
      redirect: redirect ?? this.redirect,
      selected_id: selected_id ?? this.selected_id,
      update_section_model: update_section_model ?? this.update_section_model,
    );
  }

  @override
  List<Object?> get props {
    return [
      redirect,
      selected_id,
      update_section_model,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
