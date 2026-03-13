import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SendPMGetRequest extends Equatable {
  const SendPMGetRequest({
    this.replytomessageid,
    this.tocustomerid,
  });

  final int? replytomessageid;

  final int? tocustomerid;

  static SendPMGetRequest fromJson(Map<String, dynamic> json) {
    return SendPMGetRequest(
      replytomessageid: json['replytomessageid'] == null
          ? null
          : (json['replytomessageid'] as int),
      tocustomerid:
          json['tocustomerid'] == null ? null : (json['tocustomerid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'replytomessageid': replytomessageid,
      'tocustomerid': tocustomerid,
    };
  }

  SendPMGetRequest copyWith({
    int? replytomessageid,
    int? tocustomerid,
  }) {
    return SendPMGetRequest(
      replytomessageid: replytomessageid ?? this.replytomessageid,
      tocustomerid: tocustomerid ?? this.tocustomerid,
    );
  }

  @override
  List<Object?> get props {
    return [
      replytomessageid,
      tocustomerid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
