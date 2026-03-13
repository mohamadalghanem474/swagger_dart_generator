import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ViewPMGetRequest extends Equatable {
  const ViewPMGetRequest({this.privatemessageid});

  final int? privatemessageid;

  static ViewPMGetRequest fromJson(Map<String, dynamic> json) {
    return ViewPMGetRequest(
        privatemessageid: json['privatemessageid'] == null
            ? null
            : (json['privatemessageid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'privatemessageid': privatemessageid};
  }

  ViewPMGetRequest copyWith({int? privatemessageid}) {
    return ViewPMGetRequest(
        privatemessageid: privatemessageid ?? this.privatemessageid);
  }

  @override
  List<Object?> get props {
    return [privatemessageid];
  }

  @override
  bool get stringify {
    return true;
  }
}
