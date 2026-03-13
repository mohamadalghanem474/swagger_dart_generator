import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RemoveLegalDocumentDeleteRequest extends Equatable {
  const RemoveLegalDocumentDeleteRequest({
    this.filetype,
    this.vendorid,
  });

  final String? filetype;

  final int? vendorid;

  static RemoveLegalDocumentDeleteRequest fromJson(Map<String, dynamic> json) {
    return RemoveLegalDocumentDeleteRequest(
      filetype: json['filetype'] == null ? null : (json['filetype'] as String),
      vendorid: json['vendorid'] == null ? null : (json['vendorid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'filetype': filetype,
      'vendorid': vendorid,
    };
  }

  RemoveLegalDocumentDeleteRequest copyWith({
    String? filetype,
    int? vendorid,
  }) {
    return RemoveLegalDocumentDeleteRequest(
      filetype: filetype ?? this.filetype,
      vendorid: vendorid ?? this.vendorid,
    );
  }

  @override
  List<Object?> get props {
    return [
      filetype,
      vendorid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
