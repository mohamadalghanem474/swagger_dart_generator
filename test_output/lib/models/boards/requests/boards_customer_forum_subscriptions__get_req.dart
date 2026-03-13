import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CustomerForumSubscriptionsGetRequest extends Equatable {
  const CustomerForumSubscriptionsGetRequest({this.pagenumber});

  final int? pagenumber;

  static CustomerForumSubscriptionsGetRequest fromJson(
      Map<String, dynamic> json) {
    return CustomerForumSubscriptionsGetRequest(
        pagenumber:
            json['pagenumber'] == null ? null : (json['pagenumber'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'pagenumber': pagenumber};
  }

  CustomerForumSubscriptionsGetRequest copyWith({int? pagenumber}) {
    return CustomerForumSubscriptionsGetRequest(
        pagenumber: pagenumber ?? this.pagenumber);
  }

  @override
  List<Object?> get props {
    return [pagenumber];
  }

  @override
  bool get stringify {
    return true;
  }
}
