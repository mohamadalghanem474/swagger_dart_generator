import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetByIdGetResponse extends Equatable {
  const GetByIdGetResponse({
    this.name,
    this.admin_comment,
    this.address_id,
    this.is_active,
    this.id,
  });

  final String? name;

  final String? admin_comment;

  final int? address_id;

  final bool? is_active;

  final int? id;

  static GetByIdGetResponse fromJson(Map<String, dynamic> json) {
    return GetByIdGetResponse(
      name: json['name'] == null ? null : (json['name'] as String),
      admin_comment: json['admin_comment'] == null
          ? null
          : (json['admin_comment'] as String),
      address_id:
          json['address_id'] == null ? null : (json['address_id'] as int),
      is_active: json['is_active'] == null ? null : (json['is_active'] as bool),
      id: json['id'] == null ? null : (json['id'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'admin_comment': admin_comment,
      'address_id': address_id,
      'is_active': is_active,
      'id': id,
    };
  }

  GetByIdGetResponse copyWith({
    String? name,
    String? admin_comment,
    int? address_id,
    bool? is_active,
    int? id,
  }) {
    return GetByIdGetResponse(
      name: name ?? this.name,
      admin_comment: admin_comment ?? this.admin_comment,
      address_id: address_id ?? this.address_id,
      is_active: is_active ?? this.is_active,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      admin_comment,
      address_id,
      is_active,
      id,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
