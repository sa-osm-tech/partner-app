import 'package:freezed_annotation/freezed_annotation.dart';

part 'NotificationModel.freezed.dart';
part 'NotificationModel.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  @JsonSerializable(explicitToJson: true)
  const factory NotificationModel({
    @Default('-') String id,
    @Default('-') String event_name,
    @Default('-') String sender_id,
    @Default('-') String receiver_id,
    @Default('-') String order_id,
    @Default('-') String vehicle_type,
    @Default('-') String start_address,
    @Default('-') String destination_address,
    @Default(false) bool is_read,
    DateTime? created_at,
    DateTime? updated_at,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}
