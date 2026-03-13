import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetOrderTotalGetRequest extends Equatable {
  const GetOrderTotalGetRequest({this.walletid});

  final int? walletid;

  static GetOrderTotalGetRequest fromJson(Map<String, dynamic> json) {
    return GetOrderTotalGetRequest(
        walletid: json['walletid'] == null ? null : (json['walletid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'walletid': walletid};
  }

  GetOrderTotalGetRequest copyWith({int? walletid}) {
    return GetOrderTotalGetRequest(walletid: walletid ?? this.walletid);
  }

  @override
  List<Object?> get props {
    return [walletid];
  }

  @override
  bool get stringify {
    return true;
  }
}
