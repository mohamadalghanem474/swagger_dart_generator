import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class OrderTrackingGetRequest extends Equatable {
  const OrderTrackingGetRequest({this.trackingnumber});

  final String? trackingnumber;

  static OrderTrackingGetRequest fromJson(Map<String, dynamic> json) {
    return OrderTrackingGetRequest(
        trackingnumber: json['trackingnumber'] == null
            ? null
            : (json['trackingnumber'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'trackingnumber': trackingnumber};
  }

  OrderTrackingGetRequest copyWith({String? trackingnumber}) {
    return OrderTrackingGetRequest(
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
