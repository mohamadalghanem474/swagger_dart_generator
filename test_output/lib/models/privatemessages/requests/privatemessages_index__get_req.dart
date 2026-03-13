import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class IndexGetRequest extends Equatable {
  const IndexGetRequest({
    this.tab,
    this.pagenumber,
  });

  final String? tab;

  final int? pagenumber;

  static IndexGetRequest fromJson(Map<String, dynamic> json) {
    return IndexGetRequest(
      tab: json['tab'] == null ? null : (json['tab'] as String),
      pagenumber:
          json['pagenumber'] == null ? null : (json['pagenumber'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'tab': tab,
      'pagenumber': pagenumber,
    };
  }

  IndexGetRequest copyWith({
    String? tab,
    int? pagenumber,
  }) {
    return IndexGetRequest(
      tab: tab ?? this.tab,
      pagenumber: pagenumber ?? this.pagenumber,
    );
  }

  @override
  List<Object?> get props {
    return [
      tab,
      pagenumber,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
