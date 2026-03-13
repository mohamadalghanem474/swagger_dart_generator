import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetDownloadGetRequest extends Equatable {
  const GetDownloadGetRequest({
    this.orderitemguid,
    this.agree,
  });

  final String? orderitemguid;

  final bool? agree;

  static GetDownloadGetRequest fromJson(Map<String, dynamic> json) {
    return GetDownloadGetRequest(
      orderitemguid: json['orderitemguid'] == null
          ? null
          : (json['orderitemguid'] as String),
      agree: json['agree'] == null ? null : (json['agree'] as bool),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'orderitemguid': orderitemguid,
      'agree': agree,
    };
  }

  GetDownloadGetRequest copyWith({
    String? orderitemguid,
    bool? agree,
  }) {
    return GetDownloadGetRequest(
      orderitemguid: orderitemguid ?? this.orderitemguid,
      agree: agree ?? this.agree,
    );
  }

  @override
  List<Object?> get props {
    return [
      orderitemguid,
      agree,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
