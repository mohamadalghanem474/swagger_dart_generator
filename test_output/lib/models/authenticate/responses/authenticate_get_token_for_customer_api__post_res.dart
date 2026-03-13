import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetTokenForCustomerApiPostResponse extends Equatable {
  const GetTokenForCustomerApiPostResponse({
    this.email,
    this.customer_id,
    this.api_plugin_type,
    this.site_url,
    this.token,
  });

  final String? email;

  final int? customer_id;

  final String? api_plugin_type;

  final String? site_url;

  final String? token;

  static GetTokenForCustomerApiPostResponse fromJson(
      Map<String, dynamic> json) {
    return GetTokenForCustomerApiPostResponse(
      email: json['email'] == null ? null : (json['email'] as String),
      customer_id:
          json['customer_id'] == null ? null : (json['customer_id'] as int),
      api_plugin_type: json['api_plugin_type'] == null
          ? null
          : (json['api_plugin_type'] as String),
      site_url: json['site_url'] == null ? null : (json['site_url'] as String),
      token: json['token'] == null ? null : (json['token'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'email': email,
      'customer_id': customer_id,
      'api_plugin_type': api_plugin_type,
      'site_url': site_url,
      'token': token,
    };
  }

  GetTokenForCustomerApiPostResponse copyWith({
    String? email,
    int? customer_id,
    String? api_plugin_type,
    String? site_url,
    String? token,
  }) {
    return GetTokenForCustomerApiPostResponse(
      email: email ?? this.email,
      customer_id: customer_id ?? this.customer_id,
      api_plugin_type: api_plugin_type ?? this.api_plugin_type,
      site_url: site_url ?? this.site_url,
      token: token ?? this.token,
    );
  }

  @override
  List<Object?> get props {
    return [
      email,
      customer_id,
      api_plugin_type,
      site_url,
      token,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
