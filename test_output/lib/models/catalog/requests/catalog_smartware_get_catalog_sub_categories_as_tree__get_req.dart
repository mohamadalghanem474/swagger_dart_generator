import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SmartwareGetCatalogSubCategoriesAsTreeGetRequest extends Equatable {
  const SmartwareGetCatalogSubCategoriesAsTreeGetRequest({this.id});

  final int? id;

  static SmartwareGetCatalogSubCategoriesAsTreeGetRequest fromJson(
      Map<String, dynamic> json) {
    return SmartwareGetCatalogSubCategoriesAsTreeGetRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  SmartwareGetCatalogSubCategoriesAsTreeGetRequest copyWith({int? id}) {
    return SmartwareGetCatalogSubCategoriesAsTreeGetRequest(id: id ?? this.id);
  }

  @override
  List<Object?> get props {
    return [id];
  }

  @override
  bool get stringify {
    return true;
  }
}
