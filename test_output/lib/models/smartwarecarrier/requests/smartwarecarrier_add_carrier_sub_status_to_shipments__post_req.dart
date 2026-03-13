import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AddCarrierSubStatusToShipmentsPostRequest extends Equatable {
  const AddCarrierSubStatusToShipmentsPostRequest({
    this.icarrystatusid,
    this.carriersubstatusid,
  });

  final int? icarrystatusid;

  final int? carriersubstatusid;

  static AddCarrierSubStatusToShipmentsPostRequest fromJson(
      Map<String, dynamic> json) {
    return AddCarrierSubStatusToShipmentsPostRequest(
      icarrystatusid: json['icarrystatusid'] == null
          ? null
          : (json['icarrystatusid'] as int),
      carriersubstatusid: json['carriersubstatusid'] == null
          ? null
          : (json['carriersubstatusid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'icarrystatusid': icarrystatusid,
      'carriersubstatusid': carriersubstatusid,
    };
  }

  AddCarrierSubStatusToShipmentsPostRequest copyWith({
    int? icarrystatusid,
    int? carriersubstatusid,
  }) {
    return AddCarrierSubStatusToShipmentsPostRequest(
      icarrystatusid: icarrystatusid ?? this.icarrystatusid,
      carriersubstatusid: carriersubstatusid ?? this.carriersubstatusid,
    );
  }

  @override
  List<Object?> get props {
    return [
      icarrystatusid,
      carriersubstatusid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
