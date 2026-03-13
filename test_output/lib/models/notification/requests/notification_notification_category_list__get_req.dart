import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class NotificationCategoryListGetRequest extends Equatable {
  const NotificationCategoryListGetRequest({
    this.categoryname,
    this.pageindex,
    this.pagesize,
  });

  final String? categoryname;

  final int? pageindex;

  final int? pagesize;

  static NotificationCategoryListGetRequest fromJson(
      Map<String, dynamic> json) {
    return NotificationCategoryListGetRequest(
      categoryname: json['categoryname'] == null
          ? null
          : (json['categoryname'] as String),
      pageindex: json['pageindex'] == null ? null : (json['pageindex'] as int),
      pagesize: json['pagesize'] == null ? null : (json['pagesize'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'categoryname': categoryname,
      'pageindex': pageindex,
      'pagesize': pagesize,
    };
  }

  NotificationCategoryListGetRequest copyWith({
    String? categoryname,
    int? pageindex,
    int? pagesize,
  }) {
    return NotificationCategoryListGetRequest(
      categoryname: categoryname ?? this.categoryname,
      pageindex: pageindex ?? this.pageindex,
      pagesize: pagesize ?? this.pagesize,
    );
  }

  @override
  List<Object?> get props {
    return [
      categoryname,
      pageindex,
      pagesize,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
