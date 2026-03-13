import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class DetailsGetRequest extends Equatable {
  const DetailsGetRequest({this.serviceslogsid});

  final int? serviceslogsid;

  static DetailsGetRequest fromJson(Map<String, dynamic> json) {
    return DetailsGetRequest(
        serviceslogsid: json['serviceslogsid'] == null
            ? null
            : (json['serviceslogsid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'serviceslogsid': serviceslogsid};
  }

  DetailsGetRequest copyWith({int? serviceslogsid}) {
    return DetailsGetRequest(
        serviceslogsid: serviceslogsid ?? this.serviceslogsid);
  }

  @override
  List<Object?> get props {
    return [serviceslogsid];
  }

  @override
  bool get stringify {
    return true;
  }
}
