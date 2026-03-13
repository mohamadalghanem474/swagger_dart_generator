import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetStateProvincesByIdGetResponse extends Equatable {
  const GetStateProvincesByIdGetResponse({
    this.country_id,
    this.name,
    this.abbreviation,
    this.published,
    this.display_order,
    this.id,
  });

  final int? country_id;

  final String? name;

  final String? abbreviation;

  final bool? published;

  final int? display_order;

  final int? id;

  static GetStateProvincesByIdGetResponse fromJson(Map<String, dynamic> json) {
    return GetStateProvincesByIdGetResponse(
      country_id:
          json['country_id'] == null ? null : (json['country_id'] as int),
      name: json['name'] == null ? null : (json['name'] as String),
      abbreviation: json['abbreviation'] == null
          ? null
          : (json['abbreviation'] as String),
      published: json['published'] == null ? null : (json['published'] as bool),
      display_order:
          json['display_order'] == null ? null : (json['display_order'] as int),
      id: json['id'] == null ? null : (json['id'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'country_id': country_id,
      'name': name,
      'abbreviation': abbreviation,
      'published': published,
      'display_order': display_order,
      'id': id,
    };
  }

  GetStateProvincesByIdGetResponse copyWith({
    int? country_id,
    String? name,
    String? abbreviation,
    bool? published,
    int? display_order,
    int? id,
  }) {
    return GetStateProvincesByIdGetResponse(
      country_id: country_id ?? this.country_id,
      name: name ?? this.name,
      abbreviation: abbreviation ?? this.abbreviation,
      published: published ?? this.published,
      display_order: display_order ?? this.display_order,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props {
    return [
      country_id,
      name,
      abbreviation,
      published,
      display_order,
      id,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
