import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CustomerSubscriptionsGetRequest extends Equatable {
  const CustomerSubscriptionsGetRequest({this.pagenumber});

  final int? pagenumber;

  static CustomerSubscriptionsGetRequest fromJson(Map<String, dynamic> json) {
    return CustomerSubscriptionsGetRequest(
        pagenumber:
            json['pagenumber'] == null ? null : (json['pagenumber'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'pagenumber': pagenumber};
  }

  CustomerSubscriptionsGetRequest copyWith({int? pagenumber}) {
    return CustomerSubscriptionsGetRequest(
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
