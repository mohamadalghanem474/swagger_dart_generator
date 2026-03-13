import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class DetailsGetRequest extends Equatable {
  const DetailsGetRequest({this.fuelid});

  final int? fuelid;

  static DetailsGetRequest fromJson(Map<String, dynamic> json) {
    return DetailsGetRequest(
        fuelid: json['fuelid'] == null ? null : (json['fuelid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'fuelid': fuelid};
  }

  DetailsGetRequest copyWith({int? fuelid}) {
    return DetailsGetRequest(fuelid: fuelid ?? this.fuelid);
  }

  @override
  List<Object?> get props {
    return [fuelid];
  }

  @override
  bool get stringify {
    return true;
  }
}
