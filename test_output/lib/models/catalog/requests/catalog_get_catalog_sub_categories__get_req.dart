import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetCatalogSubCategoriesGetRequest extends Equatable {
  const GetCatalogSubCategoriesGetRequest({this.id});

  final int? id;

  static GetCatalogSubCategoriesGetRequest fromJson(Map<String, dynamic> json) {
    return GetCatalogSubCategoriesGetRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  GetCatalogSubCategoriesGetRequest copyWith({int? id}) {
    return GetCatalogSubCategoriesGetRequest(id: id ?? this.id);
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
