// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CreateEmployeeModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateEmployeeModel _$$_CreateEmployeeModelFromJson(
        Map<String, dynamic> json) =>
    _$_CreateEmployeeModel(
      id: json['id'] as String?,
      email: json['email'] as String? ?? '-',
      password: json['password'] as String? ?? '-',
      partner_name: json['partner_name'] as String? ?? '-',
      phone_number: json['phone_number'] as String? ?? '-',
      first_name: json['first_name'] as String? ?? '-',
      last_name: json['last_name'] as String? ?? '-',
    );

Map<String, dynamic> _$$_CreateEmployeeModelToJson(
        _$_CreateEmployeeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'partner_name': instance.partner_name,
      'phone_number': instance.phone_number,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
    };
