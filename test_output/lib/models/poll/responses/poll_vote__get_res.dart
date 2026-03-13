import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class VoteGetResponse extends Equatable {
  const VoteGetResponse({
    this.name,
    this.already_voted,
    this.total_votes,
    this.answers,
    this.id,
    this.custom_properties,
  });

  final String? name;

  final bool? already_voted;

  final int? total_votes;

  final List<String>? answers;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static VoteGetResponse fromJson(Map<String, dynamic> json) {
    return VoteGetResponse(
      name: json['name'] == null ? null : (json['name'] as String),
      already_voted: json['already_voted'] == null
          ? null
          : (json['already_voted'] as bool),
      total_votes:
          json['total_votes'] == null ? null : (json['total_votes'] as int),
      answers: json['answers'] == null ? null : json['answers'],
      id: json['id'] == null ? null : (json['id'] as int),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'already_voted': already_voted,
      'total_votes': total_votes,
      'answers': answers,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  VoteGetResponse copyWith({
    String? name,
    bool? already_voted,
    int? total_votes,
    List<String>? answers,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return VoteGetResponse(
      name: name ?? this.name,
      already_voted: already_voted ?? this.already_voted,
      total_votes: total_votes ?? this.total_votes,
      answers: answers ?? this.answers,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      already_voted,
      total_votes,
      answers,
      id,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
