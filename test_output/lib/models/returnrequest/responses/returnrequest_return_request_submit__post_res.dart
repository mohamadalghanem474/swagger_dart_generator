import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ReturnRequestSubmitPostResponse extends Equatable {
  const ReturnRequestSubmitPostResponse({
    this.order_id,
    this.custom_order_number,
    this.items,
    this.return_request_reason_id,
    this.available_return_reasons,
    this.return_request_action_id,
    this.available_return_actions,
    this.comments,
    this.allow_files,
    this.uploaded_file_guid,
    this.result,
    this.custom_properties,
  });

  final int? order_id;

  final String? custom_order_number;

  final List<String>? items;

  final int? return_request_reason_id;

  final List<String>? available_return_reasons;

  final int? return_request_action_id;

  final List<String>? available_return_actions;

  final String? comments;

  final bool? allow_files;

  final String? uploaded_file_guid;

  final String? result;

  final Map<String, dynamic>? custom_properties;

  static ReturnRequestSubmitPostResponse fromJson(Map<String, dynamic> json) {
    return ReturnRequestSubmitPostResponse(
      order_id: json['order_id'] == null ? null : (json['order_id'] as int),
      custom_order_number: json['custom_order_number'] == null
          ? null
          : (json['custom_order_number'] as String),
      items: json['items'] == null ? null : json['items'],
      return_request_reason_id: json['return_request_reason_id'] == null
          ? null
          : (json['return_request_reason_id'] as int),
      available_return_reasons: json['available_return_reasons'] == null
          ? null
          : json['available_return_reasons'],
      return_request_action_id: json['return_request_action_id'] == null
          ? null
          : (json['return_request_action_id'] as int),
      available_return_actions: json['available_return_actions'] == null
          ? null
          : json['available_return_actions'],
      comments: json['comments'] == null ? null : (json['comments'] as String),
      allow_files:
          json['allow_files'] == null ? null : (json['allow_files'] as bool),
      uploaded_file_guid: json['uploaded_file_guid'] == null
          ? null
          : (json['uploaded_file_guid'] as String),
      result: json['result'] == null ? null : (json['result'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'order_id': order_id,
      'custom_order_number': custom_order_number,
      'items': items,
      'return_request_reason_id': return_request_reason_id,
      'available_return_reasons': available_return_reasons,
      'return_request_action_id': return_request_action_id,
      'available_return_actions': available_return_actions,
      'comments': comments,
      'allow_files': allow_files,
      'uploaded_file_guid': uploaded_file_guid,
      'result': result,
      'custom_properties': custom_properties,
    };
  }

  ReturnRequestSubmitPostResponse copyWith({
    int? order_id,
    String? custom_order_number,
    List<String>? items,
    int? return_request_reason_id,
    List<String>? available_return_reasons,
    int? return_request_action_id,
    List<String>? available_return_actions,
    String? comments,
    bool? allow_files,
    String? uploaded_file_guid,
    String? result,
    Map<String, dynamic>? custom_properties,
  }) {
    return ReturnRequestSubmitPostResponse(
      order_id: order_id ?? this.order_id,
      custom_order_number: custom_order_number ?? this.custom_order_number,
      items: items ?? this.items,
      return_request_reason_id:
          return_request_reason_id ?? this.return_request_reason_id,
      available_return_reasons:
          available_return_reasons ?? this.available_return_reasons,
      return_request_action_id:
          return_request_action_id ?? this.return_request_action_id,
      available_return_actions:
          available_return_actions ?? this.available_return_actions,
      comments: comments ?? this.comments,
      allow_files: allow_files ?? this.allow_files,
      uploaded_file_guid: uploaded_file_guid ?? this.uploaded_file_guid,
      result: result ?? this.result,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      order_id,
      custom_order_number,
      items,
      return_request_reason_id,
      available_return_reasons,
      return_request_action_id,
      available_return_actions,
      comments,
      allow_files,
      uploaded_file_guid,
      result,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
