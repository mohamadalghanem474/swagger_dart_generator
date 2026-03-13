import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class PdfPackagingSlipGetRequest extends Equatable {
  const PdfPackagingSlipGetRequest({this.shipmentid});

  final int? shipmentid;

  static PdfPackagingSlipGetRequest fromJson(Map<String, dynamic> json) {
    return PdfPackagingSlipGetRequest(
        shipmentid:
            json['shipmentid'] == null ? null : (json['shipmentid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'shipmentid': shipmentid};
  }

  PdfPackagingSlipGetRequest copyWith({int? shipmentid}) {
    return PdfPackagingSlipGetRequest(
        shipmentid: shipmentid ?? this.shipmentid);
  }

  @override
  List<Object?> get props {
    return [shipmentid];
  }

  @override
  bool get stringify {
    return true;
  }
}
