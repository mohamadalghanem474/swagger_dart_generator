import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetAllVendorProductsGetRequest extends Equatable {
  const GetAllVendorProductsGetRequest({
    this.pageindex,
    this.pagesize,
    this.categoryids,
    this.manufacturerids,
    this.storeid,
    this.vendorid,
    this.warehouseid,
    this.producttype,
    this.visibleindividuallyonly,
    this.excludefeaturedproducts,
    this.pricemin,
    this.pricemax,
    this.producttagid,
    this.keywords,
    this.searchdescriptions,
    this.searchmanufacturerpartnumber,
    this.searchsku,
    this.searchproducttags,
    this.languageid,
    this.filteredspecoptionids,
    this.orderbytype,
    this.showhidden,
    this.overridepublished,
  });

  final int? pageindex;

  final int? pagesize;

  final List<dynamic>? categoryids;

  final List<dynamic>? manufacturerids;

  final int? storeid;

  final int? vendorid;

  final int? warehouseid;

  final String? producttype;

  final bool? visibleindividuallyonly;

  final bool? excludefeaturedproducts;

  final double? pricemin;

  final double? pricemax;

  final int? producttagid;

  final String? keywords;

  final bool? searchdescriptions;

  final bool? searchmanufacturerpartnumber;

  final bool? searchsku;

  final bool? searchproducttags;

  final int? languageid;

  final String? filteredspecoptionids;

  final String? orderbytype;

  final bool? showhidden;

  final bool? overridepublished;

  static GetAllVendorProductsGetRequest fromJson(Map<String, dynamic> json) {
    return GetAllVendorProductsGetRequest(
      pageindex: json['pageindex'] == null ? null : (json['pageindex'] as int),
      pagesize: json['pagesize'] == null ? null : (json['pagesize'] as int),
      categoryids: json['categoryids'] == null
          ? null
          : (json['categoryids'] as List<dynamic>),
      manufacturerids: json['manufacturerids'] == null
          ? null
          : (json['manufacturerids'] as List<dynamic>),
      storeid: json['storeid'] == null ? null : (json['storeid'] as int),
      vendorid: json['vendorid'] == null ? null : (json['vendorid'] as int),
      warehouseid:
          json['warehouseid'] == null ? null : (json['warehouseid'] as int),
      producttype:
          json['producttype'] == null ? null : (json['producttype'] as String),
      visibleindividuallyonly: json['visibleindividuallyonly'] == null
          ? null
          : (json['visibleindividuallyonly'] as bool),
      excludefeaturedproducts: json['excludefeaturedproducts'] == null
          ? null
          : (json['excludefeaturedproducts'] as bool),
      pricemin: json['pricemin'] == null ? null : (json['pricemin'] as double),
      pricemax: json['pricemax'] == null ? null : (json['pricemax'] as double),
      producttagid:
          json['producttagid'] == null ? null : (json['producttagid'] as int),
      keywords: json['keywords'] == null ? null : (json['keywords'] as String),
      searchdescriptions: json['searchdescriptions'] == null
          ? null
          : (json['searchdescriptions'] as bool),
      searchmanufacturerpartnumber: json['searchmanufacturerpartnumber'] == null
          ? null
          : (json['searchmanufacturerpartnumber'] as bool),
      searchsku: json['searchsku'] == null ? null : (json['searchsku'] as bool),
      searchproducttags: json['searchproducttags'] == null
          ? null
          : (json['searchproducttags'] as bool),
      languageid:
          json['languageid'] == null ? null : (json['languageid'] as int),
      filteredspecoptionids: json['filteredspecoptionids'] == null
          ? null
          : (json['filteredspecoptionids'] as String),
      orderbytype:
          json['orderbytype'] == null ? null : (json['orderbytype'] as String),
      showhidden:
          json['showhidden'] == null ? null : (json['showhidden'] as bool),
      overridepublished: json['overridepublished'] == null
          ? null
          : (json['overridepublished'] as bool),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'pageindex': pageindex,
      'pagesize': pagesize,
      'categoryids': categoryids,
      'manufacturerids': manufacturerids,
      'storeid': storeid,
      'vendorid': vendorid,
      'warehouseid': warehouseid,
      'producttype': producttype,
      'visibleindividuallyonly': visibleindividuallyonly,
      'excludefeaturedproducts': excludefeaturedproducts,
      'pricemin': pricemin,
      'pricemax': pricemax,
      'producttagid': producttagid,
      'keywords': keywords,
      'searchdescriptions': searchdescriptions,
      'searchmanufacturerpartnumber': searchmanufacturerpartnumber,
      'searchsku': searchsku,
      'searchproducttags': searchproducttags,
      'languageid': languageid,
      'filteredspecoptionids': filteredspecoptionids,
      'orderbytype': orderbytype,
      'showhidden': showhidden,
      'overridepublished': overridepublished,
    };
  }

  GetAllVendorProductsGetRequest copyWith({
    int? pageindex,
    int? pagesize,
    List<dynamic>? categoryids,
    List<dynamic>? manufacturerids,
    int? storeid,
    int? vendorid,
    int? warehouseid,
    String? producttype,
    bool? visibleindividuallyonly,
    bool? excludefeaturedproducts,
    double? pricemin,
    double? pricemax,
    int? producttagid,
    String? keywords,
    bool? searchdescriptions,
    bool? searchmanufacturerpartnumber,
    bool? searchsku,
    bool? searchproducttags,
    int? languageid,
    String? filteredspecoptionids,
    String? orderbytype,
    bool? showhidden,
    bool? overridepublished,
  }) {
    return GetAllVendorProductsGetRequest(
      pageindex: pageindex ?? this.pageindex,
      pagesize: pagesize ?? this.pagesize,
      categoryids: categoryids ?? this.categoryids,
      manufacturerids: manufacturerids ?? this.manufacturerids,
      storeid: storeid ?? this.storeid,
      vendorid: vendorid ?? this.vendorid,
      warehouseid: warehouseid ?? this.warehouseid,
      producttype: producttype ?? this.producttype,
      visibleindividuallyonly:
          visibleindividuallyonly ?? this.visibleindividuallyonly,
      excludefeaturedproducts:
          excludefeaturedproducts ?? this.excludefeaturedproducts,
      pricemin: pricemin ?? this.pricemin,
      pricemax: pricemax ?? this.pricemax,
      producttagid: producttagid ?? this.producttagid,
      keywords: keywords ?? this.keywords,
      searchdescriptions: searchdescriptions ?? this.searchdescriptions,
      searchmanufacturerpartnumber:
          searchmanufacturerpartnumber ?? this.searchmanufacturerpartnumber,
      searchsku: searchsku ?? this.searchsku,
      searchproducttags: searchproducttags ?? this.searchproducttags,
      languageid: languageid ?? this.languageid,
      filteredspecoptionids:
          filteredspecoptionids ?? this.filteredspecoptionids,
      orderbytype: orderbytype ?? this.orderbytype,
      showhidden: showhidden ?? this.showhidden,
      overridepublished: overridepublished ?? this.overridepublished,
    );
  }

  @override
  List<Object?> get props {
    return [
      pageindex,
      pagesize,
      categoryids,
      manufacturerids,
      storeid,
      vendorid,
      warehouseid,
      producttype,
      visibleindividuallyonly,
      excludefeaturedproducts,
      pricemin,
      pricemax,
      producttagid,
      keywords,
      searchdescriptions,
      searchmanufacturerpartnumber,
      searchsku,
      searchproducttags,
      languageid,
      filteredspecoptionids,
      orderbytype,
      showhidden,
      overridepublished,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
