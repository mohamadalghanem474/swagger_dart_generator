import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetFileUploadGetRequest extends Equatable {
  const GetFileUploadGetRequest({this.downloadguid});

  final String? downloadguid;

  static GetFileUploadGetRequest fromJson(Map<String, dynamic> json) {
    return GetFileUploadGetRequest(
        downloadguid: json['downloadguid'] == null
            ? null
            : (json['downloadguid'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'downloadguid': downloadguid};
  }

  GetFileUploadGetRequest copyWith({String? downloadguid}) {
    return GetFileUploadGetRequest(
        downloadguid: downloadguid ?? this.downloadguid);
  }

  @override
  List<Object?> get props {
    return [downloadguid];
  }

  @override
  bool get stringify {
    return true;
  }
}
