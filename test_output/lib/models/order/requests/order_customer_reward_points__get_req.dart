import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CustomerRewardPointsGetRequest extends Equatable {
  const CustomerRewardPointsGetRequest({this.pagenumber});

  final int? pagenumber;

  static CustomerRewardPointsGetRequest fromJson(Map<String, dynamic> json) {
    return CustomerRewardPointsGetRequest(
        pagenumber:
            json['pagenumber'] == null ? null : (json['pagenumber'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'pagenumber': pagenumber};
  }

  CustomerRewardPointsGetRequest copyWith({int? pagenumber}) {
    return CustomerRewardPointsGetRequest(
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
