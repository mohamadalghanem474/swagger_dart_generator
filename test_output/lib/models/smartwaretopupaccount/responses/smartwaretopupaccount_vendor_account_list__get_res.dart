import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class VendorAccountListGetResponse extends Equatable {
  const VendorAccountListGetResponse({
    this.Data,
    this.draw,
    this.recordsFiltered,
    this.recordsTotal,
    this.CustomProperties,
    this.friendlyPluginName,
  });

  final List<String>? Data;

  final String? draw;

  final int? recordsFiltered;

  final int? recordsTotal;

  final Map<String, dynamic>? CustomProperties;

  final String? friendlyPluginName;

  static VendorAccountListGetResponse fromJson(Map<String, dynamic> json) {
    return VendorAccountListGetResponse(
      Data: json['Data'] == null ? null : json['Data'],
      draw: json['draw'] == null ? null : (json['draw'] as String),
      recordsFiltered: json['recordsFiltered'] == null
          ? null
          : (json['recordsFiltered'] as int),
      recordsTotal:
          json['recordsTotal'] == null ? null : (json['recordsTotal'] as int),
      CustomProperties: json['CustomProperties'] == null
          ? null
          : (json['CustomProperties'] as Map<String, dynamic>),
      friendlyPluginName: json['friendlyPluginName'] == null
          ? null
          : (json['friendlyPluginName'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'Data': Data,
      'draw': draw,
      'recordsFiltered': recordsFiltered,
      'recordsTotal': recordsTotal,
      'CustomProperties': CustomProperties,
      'friendlyPluginName': friendlyPluginName,
    };
  }

  VendorAccountListGetResponse copyWith({
    List<String>? Data,
    String? draw,
    int? recordsFiltered,
    int? recordsTotal,
    Map<String, dynamic>? CustomProperties,
    String? friendlyPluginName,
  }) {
    return VendorAccountListGetResponse(
      Data: Data ?? this.Data,
      draw: draw ?? this.draw,
      recordsFiltered: recordsFiltered ?? this.recordsFiltered,
      recordsTotal: recordsTotal ?? this.recordsTotal,
      CustomProperties: CustomProperties ?? this.CustomProperties,
      friendlyPluginName: friendlyPluginName ?? this.friendlyPluginName,
    );
  }

  @override
  List<Object?> get props {
    return [
      Data,
      draw,
      recordsFiltered,
      recordsTotal,
      CustomProperties,
      friendlyPluginName,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
