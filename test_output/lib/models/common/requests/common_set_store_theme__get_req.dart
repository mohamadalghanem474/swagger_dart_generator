import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SetStoreThemeGetRequest extends Equatable {
  const SetStoreThemeGetRequest({this.themename});

  final String? themename;

  static SetStoreThemeGetRequest fromJson(Map<String, dynamic> json) {
    return SetStoreThemeGetRequest(
        themename:
            json['themename'] == null ? null : (json['themename'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'themename': themename};
  }

  SetStoreThemeGetRequest copyWith({String? themename}) {
    return SetStoreThemeGetRequest(themename: themename ?? this.themename);
  }

  @override
  List<Object?> get props {
    return [themename];
  }

  @override
  bool get stringify {
    return true;
  }
}
