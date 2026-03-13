import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CheckUsernameAvailabilityGetResponse extends Equatable {
  const CheckUsernameAvailabilityGetResponse({
    this.available,
    this.text,
  });

  final bool? available;

  final String? text;

  static CheckUsernameAvailabilityGetResponse fromJson(
      Map<String, dynamic> json) {
    return CheckUsernameAvailabilityGetResponse(
      available: json['available'] == null ? null : (json['available'] as bool),
      text: json['text'] == null ? null : (json['text'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'available': available,
      'text': text,
    };
  }

  CheckUsernameAvailabilityGetResponse copyWith({
    bool? available,
    String? text,
  }) {
    return CheckUsernameAvailabilityGetResponse(
      available: available ?? this.available,
      text: text ?? this.text,
    );
  }

  @override
  List<Object?> get props {
    return [
      available,
      text,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
