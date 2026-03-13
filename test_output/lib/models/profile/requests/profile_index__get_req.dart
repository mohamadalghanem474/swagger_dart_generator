import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class IndexGetRequest extends Equatable {
  const IndexGetRequest({
    this.id,
    this.pagenumber,
  });

  final int? id;

  final int? pagenumber;

  static IndexGetRequest fromJson(Map<String, dynamic> json) {
    return IndexGetRequest(
      id: json['id'] == null ? null : (json['id'] as int),
      pagenumber:
          json['pagenumber'] == null ? null : (json['pagenumber'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'pagenumber': pagenumber,
    };
  }

  IndexGetRequest copyWith({
    int? id,
    int? pagenumber,
  }) {
    return IndexGetRequest(
      id: id ?? this.id,
      pagenumber: pagenumber ?? this.pagenumber,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      pagenumber,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
