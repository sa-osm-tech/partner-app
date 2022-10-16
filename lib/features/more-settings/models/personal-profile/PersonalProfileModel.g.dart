// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PersonalProfileModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonalProfileModel _$$_PersonalProfileModelFromJson(
        Map<String, dynamic> json) =>
    _$_PersonalProfileModel(
      id: json['id'] as String?,
      email: json['email'] as String? ?? '-',
      partner_name: json['partner_name'] as String? ?? '-',
      firstname: json['firstname'] as String? ?? '-',
      lastname: json['lastname'] as String? ?? '-',
      phone_number: json['phone_number'] as String? ?? '-',
      base_address: json['base_address'] as String? ?? '-',
      base_contact: json['base_contact'] as String? ?? '-',
      is_available: json['is_available'] as bool? ?? false,
      profile_picture_url: json['profile_picture_url'] as String?,
      status: json['status'] as int?,
      role: json['role'] as int?,
    );

Map<String, dynamic> _$$_PersonalProfileModelToJson(
        _$_PersonalProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'partner_name': instance.partner_name,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'phone_number': instance.phone_number,
      'base_address': instance.base_address,
      'base_contact': instance.base_contact,
      'is_available': instance.is_available,
      'profile_picture_url': instance.profile_picture_url,
      'status': instance.status,
      'role': instance.role,
    };
