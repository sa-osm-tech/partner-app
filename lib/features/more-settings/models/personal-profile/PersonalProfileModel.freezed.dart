// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'PersonalProfileModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonalProfileModel _$PersonalProfileModelFromJson(Map<String, dynamic> json) {
  return _PersonalProfileModel.fromJson(json);
}

/// @nodoc
mixin _$PersonalProfileModel {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int? get role => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String? get profileImgURL => throw _privateConstructorUsedError;
  String? get baseAddress => throw _privateConstructorUsedError;
  String? get baseContact => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalProfileModelCopyWith<PersonalProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalProfileModelCopyWith<$Res> {
  factory $PersonalProfileModelCopyWith(PersonalProfileModel value,
          $Res Function(PersonalProfileModel) then) =
      _$PersonalProfileModelCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String email,
      int? role,
      String phoneNumber,
      String? profileImgURL,
      String? baseAddress,
      String? baseContact,
      bool isAvailable});
}

/// @nodoc
class _$PersonalProfileModelCopyWithImpl<$Res>
    implements $PersonalProfileModelCopyWith<$Res> {
  _$PersonalProfileModelCopyWithImpl(this._value, this._then);

  final PersonalProfileModel _value;
  // ignore: unused_field
  final $Res Function(PersonalProfileModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? phoneNumber = freezed,
    Object? profileImgURL = freezed,
    Object? baseAddress = freezed,
    Object? baseContact = freezed,
    Object? isAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      profileImgURL: profileImgURL == freezed
          ? _value.profileImgURL
          : profileImgURL // ignore: cast_nullable_to_non_nullable
              as String?,
      baseAddress: baseAddress == freezed
          ? _value.baseAddress
          : baseAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      baseContact: baseContact == freezed
          ? _value.baseContact
          : baseContact // ignore: cast_nullable_to_non_nullable
              as String?,
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_PersonalProfileModelCopyWith<$Res>
    implements $PersonalProfileModelCopyWith<$Res> {
  factory _$$_PersonalProfileModelCopyWith(_$_PersonalProfileModel value,
          $Res Function(_$_PersonalProfileModel) then) =
      __$$_PersonalProfileModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String email,
      int? role,
      String phoneNumber,
      String? profileImgURL,
      String? baseAddress,
      String? baseContact,
      bool isAvailable});
}

/// @nodoc
class __$$_PersonalProfileModelCopyWithImpl<$Res>
    extends _$PersonalProfileModelCopyWithImpl<$Res>
    implements _$$_PersonalProfileModelCopyWith<$Res> {
  __$$_PersonalProfileModelCopyWithImpl(_$_PersonalProfileModel _value,
      $Res Function(_$_PersonalProfileModel) _then)
      : super(_value, (v) => _then(v as _$_PersonalProfileModel));

  @override
  _$_PersonalProfileModel get _value => super._value as _$_PersonalProfileModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? phoneNumber = freezed,
    Object? profileImgURL = freezed,
    Object? baseAddress = freezed,
    Object? baseContact = freezed,
    Object? isAvailable = freezed,
  }) {
    return _then(_$_PersonalProfileModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      profileImgURL: profileImgURL == freezed
          ? _value.profileImgURL
          : profileImgURL // ignore: cast_nullable_to_non_nullable
              as String?,
      baseAddress: baseAddress == freezed
          ? _value.baseAddress
          : baseAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      baseContact: baseContact == freezed
          ? _value.baseContact
          : baseContact // ignore: cast_nullable_to_non_nullable
              as String?,
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PersonalProfileModel implements _PersonalProfileModel {
  const _$_PersonalProfileModel(
      {this.name = '-',
      this.email = '-',
      this.role,
      this.phoneNumber = '-',
      this.profileImgURL,
      this.baseAddress,
      this.baseContact,
      this.isAvailable = false});

  factory _$_PersonalProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_PersonalProfileModelFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  final int? role;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  final String? profileImgURL;
  @override
  final String? baseAddress;
  @override
  final String? baseContact;
  @override
  @JsonKey()
  final bool isAvailable;

  @override
  String toString() {
    return 'PersonalProfileModel(name: $name, email: $email, role: $role, phoneNumber: $phoneNumber, profileImgURL: $profileImgURL, baseAddress: $baseAddress, baseContact: $baseContact, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalProfileModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.profileImgURL, profileImgURL) &&
            const DeepCollectionEquality()
                .equals(other.baseAddress, baseAddress) &&
            const DeepCollectionEquality()
                .equals(other.baseContact, baseContact) &&
            const DeepCollectionEquality()
                .equals(other.isAvailable, isAvailable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(profileImgURL),
      const DeepCollectionEquality().hash(baseAddress),
      const DeepCollectionEquality().hash(baseContact),
      const DeepCollectionEquality().hash(isAvailable));

  @JsonKey(ignore: true)
  @override
  _$$_PersonalProfileModelCopyWith<_$_PersonalProfileModel> get copyWith =>
      __$$_PersonalProfileModelCopyWithImpl<_$_PersonalProfileModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonalProfileModelToJson(
      this,
    );
  }
}

abstract class _PersonalProfileModel implements PersonalProfileModel {
  const factory _PersonalProfileModel(
      {final String name,
      final String email,
      final int? role,
      final String phoneNumber,
      final String? profileImgURL,
      final String? baseAddress,
      final String? baseContact,
      final bool isAvailable}) = _$_PersonalProfileModel;

  factory _PersonalProfileModel.fromJson(Map<String, dynamic> json) =
      _$_PersonalProfileModel.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  int? get role;
  @override
  String get phoneNumber;
  @override
  String? get profileImgURL;
  @override
  String? get baseAddress;
  @override
  String? get baseContact;
  @override
  bool get isAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalProfileModelCopyWith<_$_PersonalProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
