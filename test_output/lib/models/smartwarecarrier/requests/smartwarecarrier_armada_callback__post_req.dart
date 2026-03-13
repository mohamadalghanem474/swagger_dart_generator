import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ArmadaCallbackPostRequest extends Equatable {
  const ArmadaCallbackPostRequest({
    this.installation_id,
    this.app,
    this.merchant,
    this.access_Token,
  });

  final String? installation_id;

  final Map<String, dynamic>? app;

  final Map<String, dynamic>? merchant;

  final String? access_Token;

  static ArmadaCallbackPostRequest fromJson(Map<String, dynamic> json) {
    return ArmadaCallbackPostRequest(
      installation_id: json['installation_id'] == null
          ? null
          : (json['installation_id'] as String),
      app: json['app'] == null ? null : (json['app'] as Map<String, dynamic>),
      merchant: json['merchant'] == null
          ? null
          : (json['merchant'] as Map<String, dynamic>),
      access_Token: json['access_Token'] == null
          ? null
          : (json['access_Token'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'installation_id': installation_id,
      'app': app,
      'merchant': merchant,
      'access_Token': access_Token,
    };
  }

  ArmadaCallbackPostRequest copyWith({
    String? installation_id,
    Map<String, dynamic>? app,
    Map<String, dynamic>? merchant,
    String? access_Token,
  }) {
    return ArmadaCallbackPostRequest(
      installation_id: installation_id ?? this.installation_id,
      app: app ?? this.app,
      merchant: merchant ?? this.merchant,
      access_Token: access_Token ?? this.access_Token,
    );
  }

  @override
  List<Object?> get props {
    return [
      installation_id,
      app,
      merchant,
      access_Token,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
