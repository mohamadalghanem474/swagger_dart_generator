import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ListRssGetRequest extends Equatable {
  const ListRssGetRequest({this.languageid});

  final int? languageid;

  static ListRssGetRequest fromJson(Map<String, dynamic> json) {
    return ListRssGetRequest(
        languageid:
            json['languageid'] == null ? null : (json['languageid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'languageid': languageid};
  }

  ListRssGetRequest copyWith({int? languageid}) {
    return ListRssGetRequest(languageid: languageid ?? this.languageid);
  }

  @override
  List<Object?> get props {
    return [languageid];
  }

  @override
  bool get stringify {
    return true;
  }
}
