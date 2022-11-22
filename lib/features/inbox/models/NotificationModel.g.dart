// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NotificationModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationModel _$$_NotificationModelFromJson(Map<String, dynamic> json) =>
    _$_NotificationModel(
      id: json['id'] as String? ?? '-',
      event_name: json['event_name'] as String? ?? '-',
      sender_id: json['sender_id'] as String? ?? '-',
      receiver_id: json['receiver_id'] as String? ?? '-',
      order_id: json['order_id'] as String? ?? '-',
      vehicle_type: json['vehicle_type'] as String? ?? '-',
      start_address: json['start_address'] as String? ?? '-',
      destination_address: json['destination_address'] as String? ?? '-',
      is_read: json['is_read'] as bool? ?? false,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_NotificationModelToJson(
        _$_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_name': instance.event_name,
      'sender_id': instance.sender_id,
      'receiver_id': instance.receiver_id,
      'order_id': instance.order_id,
      'vehicle_type': instance.vehicle_type,
      'start_address': instance.start_address,
      'destination_address': instance.destination_address,
      'is_read': instance.is_read,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };
