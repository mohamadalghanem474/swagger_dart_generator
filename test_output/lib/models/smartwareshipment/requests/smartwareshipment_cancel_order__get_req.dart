import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CancelOrderGetRequest extends Equatable {
  const CancelOrderGetRequest({this.trackingnumber});

  final String? trackingnumber;

  static CancelOrderGetRequest fromJson(Map<String, dynamic> json) {
    return CancelOrderGetRequest(
        trackingnumber: json['trackingnumber'] == null
            ? null
            : (json['trackingnumber'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'trackingnumber': trackingnumber};
  }

  CancelOrderGetRequest copyWith({String? trackingnumber}) {
    return CancelOrderGetRequest(
        trackingnumber: trackingnumber ?? this.trackingnumber);
  }

  @override
  List<Object?> get props {
    return [trackingnumber];
  }

  @override
  bool get stringify {
    return true;
  }
}
