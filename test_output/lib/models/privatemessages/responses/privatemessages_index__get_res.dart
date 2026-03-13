import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class IndexGetResponse extends Equatable {
  const IndexGetResponse({
    this.inbox_page,
    this.sent_items_page,
    this.sent_items_tab_selected,
    this.custom_properties,
  });

  final int? inbox_page;

  final int? sent_items_page;

  final bool? sent_items_tab_selected;

  final Map<String, dynamic>? custom_properties;

  static IndexGetResponse fromJson(Map<String, dynamic> json) {
    return IndexGetResponse(
      inbox_page:
          json['inbox_page'] == null ? null : (json['inbox_page'] as int),
      sent_items_page: json['sent_items_page'] == null
          ? null
          : (json['sent_items_page'] as int),
      sent_items_tab_selected: json['sent_items_tab_selected'] == null
          ? null
          : (json['sent_items_tab_selected'] as bool),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'inbox_page': inbox_page,
      'sent_items_page': sent_items_page,
      'sent_items_tab_selected': sent_items_tab_selected,
      'custom_properties': custom_properties,
    };
  }

  IndexGetResponse copyWith({
    int? inbox_page,
    int? sent_items_page,
    bool? sent_items_tab_selected,
    Map<String, dynamic>? custom_properties,
  }) {
    return IndexGetResponse(
      inbox_page: inbox_page ?? this.inbox_page,
      sent_items_page: sent_items_page ?? this.sent_items_page,
      sent_items_tab_selected:
          sent_items_tab_selected ?? this.sent_items_tab_selected,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      inbox_page,
      sent_items_page,
      sent_items_tab_selected,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
