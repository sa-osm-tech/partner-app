// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PersonalProfileModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonalProfileModel _$$_PersonalProfileModelFromJson(
        Map<String, dynamic> json) =>
    _$_PersonalProfileModel(
      name: json['name'] as String? ?? '-',
      email: json['email'] as String? ?? '-',
      role: json['role'] as int?,
      phoneNumber: json['phoneNumber'] as String? ?? '-',
      profileImgURL: json['profileImgURL'] as String?,
      baseAddress: json['baseAddress'] as String?,
      baseContact: json['baseContact'] as String?,
      isAvailable: json['isAvailable'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PersonalProfileModelToJson(
        _$_PersonalProfileModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
      'phoneNumber': instance.phoneNumber,
      'profileImgURL': instance.profileImgURL,
      'baseAddress': instance.baseAddress,
      'baseContact': instance.baseContact,
      'isAvailable': instance.isAvailable,
    };
