import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class NotificationStatusListGetRequest extends Equatable {
  const NotificationStatusListGetRequest({
    this.statusname,
    this.pageindex,
    this.pagesize,
  });

  final String? statusname;

  final int? pageindex;

  final int? pagesize;

  static NotificationStatusListGetRequest fromJson(Map<String, dynamic> json) {
    return NotificationStatusListGetRequest(
      statusname:
          json['statusname'] == null ? null : (json['statusname'] as String),
      pageindex: json['pageindex'] == null ? null : (json['pageindex'] as int),
      pagesize: json['pagesize'] == null ? null : (json['pagesize'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'statusname': statusname,
      'pageindex': pageindex,
      'pagesize': pagesize,
    };
  }

  NotificationStatusListGetRequest copyWith({
    String? statusname,
    int? pageindex,
    int? pagesize,
  }) {
    return NotificationStatusListGetRequest(
      statusname: statusname ?? this.statusname,
      pageindex: pageindex ?? this.pageindex,
      pagesize: pagesize ?? this.pagesize,
    );
  }

  @override
  List<Object?> get props {
    return [
      statusname,
      pageindex,
      pagesize,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
