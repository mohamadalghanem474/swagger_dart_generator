import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SearchByNameGetResponse extends Equatable {
  const SearchByNameGetResponse({
    this.LanguageId,
    this.ResourceName,
    this.ResourceValue,
    this.Id,
  });

  final int? LanguageId;

  final String? ResourceName;

  final String? ResourceValue;

  final int? Id;

  static SearchByNameGetResponse fromJson(Map<String, dynamic> json) {
    return SearchByNameGetResponse(
      LanguageId:
          json['LanguageId'] == null ? null : (json['LanguageId'] as int),
      ResourceName: json['ResourceName'] == null
          ? null
          : (json['ResourceName'] as String),
      ResourceValue: json['ResourceValue'] == null
          ? null
          : (json['ResourceValue'] as String),
      Id: json['Id'] == null ? null : (json['Id'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'LanguageId': LanguageId,
      'ResourceName': ResourceName,
      'ResourceValue': ResourceValue,
      'Id': Id,
    };
  }

  SearchByNameGetResponse copyWith({
    int? LanguageId,
    String? ResourceName,
    String? ResourceValue,
    int? Id,
  }) {
    return SearchByNameGetResponse(
      LanguageId: LanguageId ?? this.LanguageId,
      ResourceName: ResourceName ?? this.ResourceName,
      ResourceValue: ResourceValue ?? this.ResourceValue,
      Id: Id ?? this.Id,
    );
  }

  @override
  List<Object?> get props {
    return [
      LanguageId,
      ResourceName,
      ResourceValue,
      Id,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
