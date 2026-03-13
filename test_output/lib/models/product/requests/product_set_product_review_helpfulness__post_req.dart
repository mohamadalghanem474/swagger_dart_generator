import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SetProductReviewHelpfulnessPostRequest extends Equatable {
  const SetProductReviewHelpfulnessPostRequest({
    this.washelpful,
    this.productreviewid,
  });

  final bool? washelpful;

  final int? productreviewid;

  static SetProductReviewHelpfulnessPostRequest fromJson(
      Map<String, dynamic> json) {
    return SetProductReviewHelpfulnessPostRequest(
      washelpful:
          json['washelpful'] == null ? null : (json['washelpful'] as bool),
      productreviewid: json['productreviewid'] == null
          ? null
          : (json['productreviewid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'washelpful': washelpful,
      'productreviewid': productreviewid,
    };
  }

  SetProductReviewHelpfulnessPostRequest copyWith({
    bool? washelpful,
    int? productreviewid,
  }) {
    return SetProductReviewHelpfulnessPostRequest(
      washelpful: washelpful ?? this.washelpful,
      productreviewid: productreviewid ?? this.productreviewid,
    );
  }

  @override
  List<Object?> get props {
    return [
      washelpful,
      productreviewid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
