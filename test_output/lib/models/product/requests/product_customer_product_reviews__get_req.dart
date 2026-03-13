import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CustomerProductReviewsGetRequest extends Equatable {
  const CustomerProductReviewsGetRequest({this.pagenumber});

  final int? pagenumber;

  static CustomerProductReviewsGetRequest fromJson(Map<String, dynamic> json) {
    return CustomerProductReviewsGetRequest(
        pagenumber:
            json['pagenumber'] == null ? null : (json['pagenumber'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'pagenumber': pagenumber};
  }

  CustomerProductReviewsGetRequest copyWith({int? pagenumber}) {
    return CustomerProductReviewsGetRequest(
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
