import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CreateWebhookPostResponse extends Equatable {
  const CreateWebhookPostResponse({
    this.WebhookUrl,
    this.Secret,
    this.BodyTemplate,
    this.IsActive,
  });

  final String? WebhookUrl;

  final String? Secret;

  final String? BodyTemplate;

  final bool? IsActive;

  static CreateWebhookPostResponse fromJson(Map<String, dynamic> json) {
    return CreateWebhookPostResponse(
      WebhookUrl:
          json['WebhookUrl'] == null ? null : (json['WebhookUrl'] as String),
      Secret: json['Secret'] == null ? null : (json['Secret'] as String),
      BodyTemplate: json['BodyTemplate'] == null
          ? null
          : (json['BodyTemplate'] as String),
      IsActive: json['IsActive'] == null ? null : (json['IsActive'] as bool),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'WebhookUrl': WebhookUrl,
      'Secret': Secret,
      'BodyTemplate': BodyTemplate,
      'IsActive': IsActive,
    };
  }

  CreateWebhookPostResponse copyWith({
    String? WebhookUrl,
    String? Secret,
    String? BodyTemplate,
    bool? IsActive,
  }) {
    return CreateWebhookPostResponse(
      WebhookUrl: WebhookUrl ?? this.WebhookUrl,
      Secret: Secret ?? this.Secret,
      BodyTemplate: BodyTemplate ?? this.BodyTemplate,
      IsActive: IsActive ?? this.IsActive,
    );
  }

  @override
  List<Object?> get props {
    return [
      WebhookUrl,
      Secret,
      BodyTemplate,
      IsActive,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
