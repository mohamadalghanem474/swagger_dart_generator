import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class InstallGetRequest extends Equatable {
  const InstallGetRequest({
    this.appId,
    this.installationId,
  });

  final String? appId;

  final String? installationId;

  static InstallGetRequest fromJson(Map<String, dynamic> json) {
    return InstallGetRequest(
      appId: json['appId'] == null ? null : (json['appId'] as String),
      installationId: json['installationId'] == null
          ? null
          : (json['installationId'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'appId': appId,
      'installationId': installationId,
    };
  }

  InstallGetRequest copyWith({
    String? appId,
    String? installationId,
  }) {
    return InstallGetRequest(
      appId: appId ?? this.appId,
      installationId: installationId ?? this.installationId,
    );
  }

  @override
  List<Object?> get props {
    return [
      appId,
      installationId,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
