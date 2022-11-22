// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ShipmentModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShipmentModel _$$_ShipmentModelFromJson(Map<String, dynamic> json) =>
    _$_ShipmentModel(
      id: json['id'] as String?,
      driver_id: json['driver_id'] as String? ?? '-',
      driver_first_name: json['driver_first_name'] as String? ?? '-',
      driver_last_name: json['driver_last_name'] as String? ?? '-',
      order_id: json['order_id'] as String? ?? '-',
      owner_id: json['owner_id'] as String? ?? '-',
      create_at: json['create_at'] == null
          ? null
          : DateTime.parse(json['create_at'] as String),
    );

Map<String, dynamic> _$$_ShipmentModelToJson(_$_ShipmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'driver_id': instance.driver_id,
      'driver_first_name': instance.driver_first_name,
      'driver_last_name': instance.driver_last_name,
      'order_id': instance.order_id,
      'owner_id': instance.owner_id,
      'create_at': instance.create_at?.toIso8601String(),
    };
