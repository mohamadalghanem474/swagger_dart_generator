import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CreatePostResponse extends Equatable {
  const CreatePostResponse({
    this.company,
    this.email,
    this.first_name,
    this.last_name,
    this.phone,
    this.password,
    this.id,
  });

  final String? company;

  final String? email;

  final String? first_name;

  final String? last_name;

  final String? phone;

  final String? password;

  final int? id;

  static CreatePostResponse fromJson(Map<String, dynamic> json) {
    return CreatePostResponse(
      company: json['company'] == null ? null : (json['company'] as String),
      email: json['email'] == null ? null : (json['email'] as String),
      first_name:
          json['first_name'] == null ? null : (json['first_name'] as String),
      last_name:
          json['last_name'] == null ? null : (json['last_name'] as String),
      phone: json['phone'] == null ? null : (json['phone'] as String),
      password: json['password'] == null ? null : (json['password'] as String),
      id: json['id'] == null ? null : (json['id'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'company': company,
      'email': email,
      'first_name': first_name,
      'last_name': last_name,
      'phone': phone,
      'password': password,
      'id': id,
    };
  }

  CreatePostResponse copyWith({
    String? company,
    String? email,
    String? first_name,
    String? last_name,
    String? phone,
    String? password,
    int? id,
  }) {
    return CreatePostResponse(
      company: company ?? this.company,
      email: email ?? this.email,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      phone: phone ?? this.phone,
      password: password ?? this.password,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props {
    return [
      company,
      email,
      first_name,
      last_name,
      phone,
      password,
      id,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
