import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class MontyPaySuccessReturnUrlPostResponse extends Equatable {
  const MontyPaySuccessReturnUrlPostResponse({
    this.update_section_model,
    this.wrong_billing_address,
    this.goto_section,
  });

  final DateTime? update_section_model;

  final bool? wrong_billing_address;

  final String? goto_section;

  static MontyPaySuccessReturnUrlPostResponse fromJson(
      Map<String, dynamic> json) {
    return MontyPaySuccessReturnUrlPostResponse(
      update_section_model: json['update_section_model'] == null
          ? null
          : DateTime.parse((json['update_section_model'] as String)),
      wrong_billing_address: json['wrong_billing_address'] == null
          ? null
          : (json['wrong_billing_address'] as bool),
      goto_section: json['goto_section'] == null
          ? null
          : (json['goto_section'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'update_section_model': update_section_model?.toIso8601String(),
      'wrong_billing_address': wrong_billing_address,
      'goto_section': goto_section,
    };
  }

  MontyPaySuccessReturnUrlPostResponse copyWith({
    DateTime? update_section_model,
    bool? wrong_billing_address,
    String? goto_section,
  }) {
    return MontyPaySuccessReturnUrlPostResponse(
      update_section_model: update_section_model ?? this.update_section_model,
      wrong_billing_address:
          wrong_billing_address ?? this.wrong_billing_address,
      goto_section: goto_section ?? this.goto_section,
    );
  }

  @override
  List<Object?> get props {
    return [
      update_section_model,
      wrong_billing_address,
      goto_section,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
