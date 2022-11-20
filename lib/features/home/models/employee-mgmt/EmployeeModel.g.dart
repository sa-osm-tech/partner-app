// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EmployeeModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeModel _$$_EmployeeModelFromJson(Map<String, dynamic> json) =>
    _$_EmployeeModel(
      id: json['id'] as String?,
      email: json['email'] as String? ?? '-',
      partner_name: json['partner_name'] as String? ?? '-',
      first_name: json['first_name'] as String? ?? '-',
      last_name: json['last_name'] as String? ?? '-',
      phone_number: json['phone_number'] as String? ?? '-',
      base_address: json['base_address'] as String? ?? '-',
      base_contact: json['base_contact'] as String? ?? '-',
      is_available: json['is_available'] as bool? ?? false,
      profile_picture_url: json['profile_picture_url'] as String?,
      status: json['status'] as int?,
      role: json['role'] as int?,
      owner_id: json['owner_id'] as String? ?? '-',
    );

Map<String, dynamic> _$$_EmployeeModelToJson(_$_EmployeeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'partner_name': instance.partner_name,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'phone_number': instance.phone_number,
      'base_address': instance.base_address,
      'base_contact': instance.base_contact,
      'is_available': instance.is_available,
      'profile_picture_url': instance.profile_picture_url,
      'status': instance.status,
      'role': instance.role,
      'owner_id': instance.owner_id,
    };
