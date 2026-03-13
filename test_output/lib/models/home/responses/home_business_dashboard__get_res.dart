import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class BusinessDashboardGetResponse extends Equatable {
  const BusinessDashboardGetResponse({
    this.OrderAndShipping,
    this.shipmentDashboardModel,
    this.CODDeliveryStatus,
    this.CODDeliveryStatusPrimary,
    this.CODStatusLast30Days,
    this.TopBuyers,
    this.OrderDestribution,
    this.lengthTop,
    this.lengthDistribution,
    this.currentBalnce,
    this.currentBalnceCurrency,
    this.balnceUSD,
    this.isLebanonStore,
    this.isGuideEnabled,
    this.Page,
    this.PageSize,
    this.AvailablePageSizes,
    this.Draw,
    this.Start,
    this.Length,
    this.OrderBy,
    this.OrderByDirection,
    this.CustomProperties,
    this.friendlyPluginName,
  });

  final String? OrderAndShipping;

  final Map<String, dynamic>? shipmentDashboardModel;

  final Map<String, dynamic>? CODDeliveryStatus;

  final Map<String, dynamic>? CODDeliveryStatusPrimary;

  final List<String>? CODStatusLast30Days;

  final List<String>? TopBuyers;

  final List<String>? OrderDestribution;

  final int? lengthTop;

  final int? lengthDistribution;

  final String? currentBalnce;

  final String? currentBalnceCurrency;

  final String? balnceUSD;

  final bool? isLebanonStore;

  final bool? isGuideEnabled;

  final int? Page;

  final int? PageSize;

  final String? AvailablePageSizes;

  final String? Draw;

  final int? Start;

  final int? Length;

  final String? OrderBy;

  final String? OrderByDirection;

  final Map<String, dynamic>? CustomProperties;

  final String? friendlyPluginName;

  static BusinessDashboardGetResponse fromJson(Map<String, dynamic> json) {
    return BusinessDashboardGetResponse(
      OrderAndShipping: json['OrderAndShipping'] == null
          ? null
          : (json['OrderAndShipping'] as String),
      shipmentDashboardModel: json['shipmentDashboardModel'] == null
          ? null
          : (json['shipmentDashboardModel'] as Map<String, dynamic>),
      CODDeliveryStatus: json['CODDeliveryStatus'] == null
          ? null
          : (json['CODDeliveryStatus'] as Map<String, dynamic>),
      CODDeliveryStatusPrimary: json['CODDeliveryStatusPrimary'] == null
          ? null
          : (json['CODDeliveryStatusPrimary'] as Map<String, dynamic>),
      CODStatusLast30Days: json['CODStatusLast30Days'] == null
          ? null
          : json['CODStatusLast30Days'],
      TopBuyers: json['TopBuyers'] == null ? null : json['TopBuyers'],
      OrderDestribution:
          json['OrderDestribution'] == null ? null : json['OrderDestribution'],
      lengthTop: json['lengthTop'] == null ? null : (json['lengthTop'] as int),
      lengthDistribution: json['lengthDistribution'] == null
          ? null
          : (json['lengthDistribution'] as int),
      currentBalnce: json['currentBalnce'] == null
          ? null
          : (json['currentBalnce'] as String),
      currentBalnceCurrency: json['currentBalnceCurrency'] == null
          ? null
          : (json['currentBalnceCurrency'] as String),
      balnceUSD:
          json['balnceUSD'] == null ? null : (json['balnceUSD'] as String),
      isLebanonStore: json['isLebanonStore'] == null
          ? null
          : (json['isLebanonStore'] as bool),
      isGuideEnabled: json['isGuideEnabled'] == null
          ? null
          : (json['isGuideEnabled'] as bool),
      Page: json['Page'] == null ? null : (json['Page'] as int),
      PageSize: json['PageSize'] == null ? null : (json['PageSize'] as int),
      AvailablePageSizes: json['AvailablePageSizes'] == null
          ? null
          : (json['AvailablePageSizes'] as String),
      Draw: json['Draw'] == null ? null : (json['Draw'] as String),
      Start: json['Start'] == null ? null : (json['Start'] as int),
      Length: json['Length'] == null ? null : (json['Length'] as int),
      OrderBy: json['OrderBy'] == null ? null : (json['OrderBy'] as String),
      OrderByDirection: json['OrderByDirection'] == null
          ? null
          : (json['OrderByDirection'] as String),
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
      'OrderAndShipping': OrderAndShipping,
      'shipmentDashboardModel': shipmentDashboardModel,
      'CODDeliveryStatus': CODDeliveryStatus,
      'CODDeliveryStatusPrimary': CODDeliveryStatusPrimary,
      'CODStatusLast30Days': CODStatusLast30Days,
      'TopBuyers': TopBuyers,
      'OrderDestribution': OrderDestribution,
      'lengthTop': lengthTop,
      'lengthDistribution': lengthDistribution,
      'currentBalnce': currentBalnce,
      'currentBalnceCurrency': currentBalnceCurrency,
      'balnceUSD': balnceUSD,
      'isLebanonStore': isLebanonStore,
      'isGuideEnabled': isGuideEnabled,
      'Page': Page,
      'PageSize': PageSize,
      'AvailablePageSizes': AvailablePageSizes,
      'Draw': Draw,
      'Start': Start,
      'Length': Length,
      'OrderBy': OrderBy,
      'OrderByDirection': OrderByDirection,
      'CustomProperties': CustomProperties,
      'friendlyPluginName': friendlyPluginName,
    };
  }

  BusinessDashboardGetResponse copyWith({
    String? OrderAndShipping,
    Map<String, dynamic>? shipmentDashboardModel,
    Map<String, dynamic>? CODDeliveryStatus,
    Map<String, dynamic>? CODDeliveryStatusPrimary,
    List<String>? CODStatusLast30Days,
    List<String>? TopBuyers,
    List<String>? OrderDestribution,
    int? lengthTop,
    int? lengthDistribution,
    String? currentBalnce,
    String? currentBalnceCurrency,
    String? balnceUSD,
    bool? isLebanonStore,
    bool? isGuideEnabled,
    int? Page,
    int? PageSize,
    String? AvailablePageSizes,
    String? Draw,
    int? Start,
    int? Length,
    String? OrderBy,
    String? OrderByDirection,
    Map<String, dynamic>? CustomProperties,
    String? friendlyPluginName,
  }) {
    return BusinessDashboardGetResponse(
      OrderAndShipping: OrderAndShipping ?? this.OrderAndShipping,
      shipmentDashboardModel:
          shipmentDashboardModel ?? this.shipmentDashboardModel,
      CODDeliveryStatus: CODDeliveryStatus ?? this.CODDeliveryStatus,
      CODDeliveryStatusPrimary:
          CODDeliveryStatusPrimary ?? this.CODDeliveryStatusPrimary,
      CODStatusLast30Days: CODStatusLast30Days ?? this.CODStatusLast30Days,
      TopBuyers: TopBuyers ?? this.TopBuyers,
      OrderDestribution: OrderDestribution ?? this.OrderDestribution,
      lengthTop: lengthTop ?? this.lengthTop,
      lengthDistribution: lengthDistribution ?? this.lengthDistribution,
      currentBalnce: currentBalnce ?? this.currentBalnce,
      currentBalnceCurrency:
          currentBalnceCurrency ?? this.currentBalnceCurrency,
      balnceUSD: balnceUSD ?? this.balnceUSD,
      isLebanonStore: isLebanonStore ?? this.isLebanonStore,
      isGuideEnabled: isGuideEnabled ?? this.isGuideEnabled,
      Page: Page ?? this.Page,
      PageSize: PageSize ?? this.PageSize,
      AvailablePageSizes: AvailablePageSizes ?? this.AvailablePageSizes,
      Draw: Draw ?? this.Draw,
      Start: Start ?? this.Start,
      Length: Length ?? this.Length,
      OrderBy: OrderBy ?? this.OrderBy,
      OrderByDirection: OrderByDirection ?? this.OrderByDirection,
      CustomProperties: CustomProperties ?? this.CustomProperties,
      friendlyPluginName: friendlyPluginName ?? this.friendlyPluginName,
    );
  }

  @override
  List<Object?> get props {
    return [
      OrderAndShipping,
      shipmentDashboardModel,
      CODDeliveryStatus,
      CODDeliveryStatusPrimary,
      CODStatusLast30Days,
      TopBuyers,
      OrderDestribution,
      lengthTop,
      lengthDistribution,
      currentBalnce,
      currentBalnceCurrency,
      balnceUSD,
      isLebanonStore,
      isGuideEnabled,
      Page,
      PageSize,
      AvailablePageSizes,
      Draw,
      Start,
      Length,
      OrderBy,
      OrderByDirection,
      CustomProperties,
      friendlyPluginName,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
