import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SmartwareGetCatalogSubCategoriesWithImagesGetRequest extends Equatable {
  const SmartwareGetCatalogSubCategoriesWithImagesGetRequest({this.id});

  final int? id;

  static SmartwareGetCatalogSubCategoriesWithImagesGetRequest fromJson(
      Map<String, dynamic> json) {
    return SmartwareGetCatalogSubCategoriesWithImagesGetRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  SmartwareGetCatalogSubCategoriesWithImagesGetRequest copyWith({int? id}) {
    return SmartwareGetCatalogSubCategoriesWithImagesGetRequest(
        id: id ?? this.id);
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
