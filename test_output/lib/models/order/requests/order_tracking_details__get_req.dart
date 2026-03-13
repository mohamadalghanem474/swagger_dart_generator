import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class TrackingDetailsGetRequest extends Equatable {
  const TrackingDetailsGetRequest({
    this.trackingnumber,
    this.awbnumber,
  });

  final String? trackingnumber;

  final String? awbnumber;

  static TrackingDetailsGetRequest fromJson(Map<String, dynamic> json) {
    return TrackingDetailsGetRequest(
      trackingnumber: json['trackingnumber'] == null
          ? null
          : (json['trackingnumber'] as String),
      awbnumber:
          json['awbnumber'] == null ? null : (json['awbnumber'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'trackingnumber': trackingnumber,
      'awbnumber': awbnumber,
    };
  }

  TrackingDetailsGetRequest copyWith({
    String? trackingnumber,
    String? awbnumber,
  }) {
    return TrackingDetailsGetRequest(
      trackingnumber: trackingnumber ?? this.trackingnumber,
      awbnumber: awbnumber ?? this.awbnumber,
    );
  }

  @override
  List<Object?> get props {
    return [
      trackingnumber,
      awbnumber,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
