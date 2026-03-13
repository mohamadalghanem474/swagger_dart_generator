import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CreateNotificationPostResponse extends Equatable {
  const CreateNotificationPostResponse({
    this.Title,
    this.Body,
    this.DeliveryID,
    this.CreatorID,
    this.RecipientId,
    this.SenderId,
    this.CategoryId,
    this.Category,
    this.StatusId,
    this.CreationTime,
    this.Deleted,
    this.IsRead,
    this.ChannelId,
    this.Channel,
    this.Classification,
    this.ClassificationId,
    this.Id,
  });

  final String? Title;

  final String? Body;

  final int? DeliveryID;

  final int? CreatorID;

  final int? RecipientId;

  final int? SenderId;

  final int? CategoryId;

  final String? Category;

  final int? StatusId;

  final DateTime? CreationTime;

  final bool? Deleted;

  final bool? IsRead;

  final String? ChannelId;

  final int? Channel;

  final String? Classification;

  final int? ClassificationId;

  final int? Id;

  static CreateNotificationPostResponse fromJson(Map<String, dynamic> json) {
    return CreateNotificationPostResponse(
      Title: json['Title'] == null ? null : (json['Title'] as String),
      Body: json['Body'] == null ? null : (json['Body'] as String),
      DeliveryID:
          json['DeliveryID'] == null ? null : (json['DeliveryID'] as int),
      CreatorID: json['CreatorID'] == null ? null : (json['CreatorID'] as int),
      RecipientId:
          json['RecipientId'] == null ? null : (json['RecipientId'] as int),
      SenderId: json['SenderId'] == null ? null : (json['SenderId'] as int),
      CategoryId:
          json['CategoryId'] == null ? null : (json['CategoryId'] as int),
      Category: json['Category'] == null ? null : (json['Category'] as String),
      StatusId: json['StatusId'] == null ? null : (json['StatusId'] as int),
      CreationTime: json['CreationTime'] == null
          ? null
          : DateTime.parse((json['CreationTime'] as String)),
      Deleted: json['Deleted'] == null ? null : (json['Deleted'] as bool),
      IsRead: json['IsRead'] == null ? null : (json['IsRead'] as bool),
      ChannelId:
          json['ChannelId'] == null ? null : (json['ChannelId'] as String),
      Channel: json['Channel'] == null ? null : (json['Channel'] as int),
      Classification: json['Classification'] == null
          ? null
          : (json['Classification'] as String),
      ClassificationId: json['ClassificationId'] == null
          ? null
          : (json['ClassificationId'] as int),
      Id: json['Id'] == null ? null : (json['Id'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'Title': Title,
      'Body': Body,
      'DeliveryID': DeliveryID,
      'CreatorID': CreatorID,
      'RecipientId': RecipientId,
      'SenderId': SenderId,
      'CategoryId': CategoryId,
      'Category': Category,
      'StatusId': StatusId,
      'CreationTime': CreationTime?.toIso8601String(),
      'Deleted': Deleted,
      'IsRead': IsRead,
      'ChannelId': ChannelId,
      'Channel': Channel,
      'Classification': Classification,
      'ClassificationId': ClassificationId,
      'Id': Id,
    };
  }

  CreateNotificationPostResponse copyWith({
    String? Title,
    String? Body,
    int? DeliveryID,
    int? CreatorID,
    int? RecipientId,
    int? SenderId,
    int? CategoryId,
    String? Category,
    int? StatusId,
    DateTime? CreationTime,
    bool? Deleted,
    bool? IsRead,
    String? ChannelId,
    int? Channel,
    String? Classification,
    int? ClassificationId,
    int? Id,
  }) {
    return CreateNotificationPostResponse(
      Title: Title ?? this.Title,
      Body: Body ?? this.Body,
      DeliveryID: DeliveryID ?? this.DeliveryID,
      CreatorID: CreatorID ?? this.CreatorID,
      RecipientId: RecipientId ?? this.RecipientId,
      SenderId: SenderId ?? this.SenderId,
      CategoryId: CategoryId ?? this.CategoryId,
      Category: Category ?? this.Category,
      StatusId: StatusId ?? this.StatusId,
      CreationTime: CreationTime ?? this.CreationTime,
      Deleted: Deleted ?? this.Deleted,
      IsRead: IsRead ?? this.IsRead,
      ChannelId: ChannelId ?? this.ChannelId,
      Channel: Channel ?? this.Channel,
      Classification: Classification ?? this.Classification,
      ClassificationId: ClassificationId ?? this.ClassificationId,
      Id: Id ?? this.Id,
    );
  }

  @override
  List<Object?> get props {
    return [
      Title,
      Body,
      DeliveryID,
      CreatorID,
      RecipientId,
      SenderId,
      CategoryId,
      Category,
      StatusId,
      CreationTime,
      Deleted,
      IsRead,
      ChannelId,
      Channel,
      Classification,
      ClassificationId,
      Id,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
