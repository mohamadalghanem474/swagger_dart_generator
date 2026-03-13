import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SetProductReviewHelpfulnessPostResponse extends Equatable {
  const SetProductReviewHelpfulnessPostResponse({
    this.result,
    this.total_yes,
    this.total_no,
  });

  final String? result;

  final int? total_yes;

  final int? total_no;

  static SetProductReviewHelpfulnessPostResponse fromJson(
      Map<String, dynamic> json) {
    return SetProductReviewHelpfulnessPostResponse(
      result: json['result'] == null ? null : (json['result'] as String),
      total_yes: json['total_yes'] == null ? null : (json['total_yes'] as int),
      total_no: json['total_no'] == null ? null : (json['total_no'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'result': result,
      'total_yes': total_yes,
      'total_no': total_no,
    };
  }

  SetProductReviewHelpfulnessPostResponse copyWith({
    String? result,
    int? total_yes,
    int? total_no,
  }) {
    return SetProductReviewHelpfulnessPostResponse(
      result: result ?? this.result,
      total_yes: total_yes ?? this.total_yes,
      total_no: total_no ?? this.total_no,
    );
  }

  @override
  List<Object?> get props {
    return [
      result,
      total_yes,
      total_no,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
