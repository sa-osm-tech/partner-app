// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OrderModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      id: json['id'] as String?,
      price: json['price'] as int? ?? 10000,
      vehicle_type: json['vehicle_type'] as String? ?? '-',
      weight: json['weight'] as int? ?? 100,
      phone_number: json['phone_number'] as String? ?? '-',
      start_address: json['start_address'] as String? ?? '-',
      start_time: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      start_province: json['start_province'] as String? ?? '-',
      destination_address: json['destination_address'] as String? ?? '-',
      destination_time: json['destination_time'] == null
          ? null
          : DateTime.parse(json['destination_time'] as String),
      destination_province: json['destination_province'] as String? ?? '-',
      details: json['details'] as String? ?? '-',
      customer_name: json['customer_name'] as String? ?? '-',
      status: json['status'] as String? ?? 'notassigned',
      create_at: json['create_at'] == null
          ? null
          : DateTime.parse(json['create_at'] as String),
      shipment: json['shipment'] == null
          ? null
          : ShipmentModel.fromJson(json['shipment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'vehicle_type': instance.vehicle_type,
      'weight': instance.weight,
      'phone_number': instance.phone_number,
      'start_address': instance.start_address,
      'start_time': instance.start_time?.toIso8601String(),
      'start_province': instance.start_province,
      'destination_address': instance.destination_address,
      'destination_time': instance.destination_time?.toIso8601String(),
      'destination_province': instance.destination_province,
      'details': instance.details,
      'customer_name': instance.customer_name,
      'status': instance.status,
      'create_at': instance.create_at?.toIso8601String(),
      'shipment': instance.shipment?.toJson(),
    };
