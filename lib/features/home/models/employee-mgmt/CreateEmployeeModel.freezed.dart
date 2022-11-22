// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'CreateEmployeeModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateEmployeeModel _$CreateEmployeeModelFromJson(Map<String, dynamic> json) {
  return _CreateEmployeeModel.fromJson(json);
}

/// @nodoc
mixin _$CreateEmployeeModel {
  String? get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get partner_name => throw _privateConstructorUsedError;
  String get phone_number => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateEmployeeModelCopyWith<CreateEmployeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEmployeeModelCopyWith<$Res> {
  factory $CreateEmployeeModelCopyWith(
          CreateEmployeeModel value, $Res Function(CreateEmployeeModel) then) =
      _$CreateEmployeeModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String email,
      String password,
      String partner_name,
      String phone_number,
      String first_name,
      String last_name});
}

/// @nodoc
class _$CreateEmployeeModelCopyWithImpl<$Res>
    implements $CreateEmployeeModelCopyWith<$Res> {
  _$CreateEmployeeModelCopyWithImpl(this._value, this._then);

  final CreateEmployeeModel _value;
  // ignore: unused_field
  final $Res Function(CreateEmployeeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? partner_name = freezed,
    Object? phone_number = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      partner_name: partner_name == freezed
          ? _value.partner_name
          : partner_name // ignore: cast_nullable_to_non_nullable
              as String,
      phone_number: phone_number == freezed
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateEmployeeModelCopyWith<$Res>
    implements $CreateEmployeeModelCopyWith<$Res> {
  factory _$$_CreateEmployeeModelCopyWith(_$_CreateEmployeeModel value,
          $Res Function(_$_CreateEmployeeModel) then) =
      __$$_CreateEmployeeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String email,
      String password,
      String partner_name,
      String phone_number,
      String first_name,
      String last_name});
}

/// @nodoc
class __$$_CreateEmployeeModelCopyWithImpl<$Res>
    extends _$CreateEmployeeModelCopyWithImpl<$Res>
    implements _$$_CreateEmployeeModelCopyWith<$Res> {
  __$$_CreateEmployeeModelCopyWithImpl(_$_CreateEmployeeModel _value,
      $Res Function(_$_CreateEmployeeModel) _then)
      : super(_value, (v) => _then(v as _$_CreateEmployeeModel));

  @override
  _$_CreateEmployeeModel get _value => super._value as _$_CreateEmployeeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? partner_name = freezed,
    Object? phone_number = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
  }) {
    return _then(_$_CreateEmployeeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      partner_name: partner_name == freezed
          ? _value.partner_name
          : partner_name // ignore: cast_nullable_to_non_nullable
              as String,
      phone_number: phone_number == freezed
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CreateEmployeeModel implements _CreateEmployeeModel {
  const _$_CreateEmployeeModel(
      {this.id,
      this.email = '-',
      this.password = '-',
      this.partner_name = '-',
      this.phone_number = '-',
      this.first_name = '-',
      this.last_name = '-'});

  factory _$_CreateEmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateEmployeeModelFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String partner_name;
  @override
  @JsonKey()
  final String phone_number;
  @override
  @JsonKey()
  final String first_name;
  @override
  @JsonKey()
  final String last_name;

  @override
  String toString() {
    return 'CreateEmployeeModel(id: $id, email: $email, password: $password, partner_name: $partner_name, phone_number: $phone_number, first_name: $first_name, last_name: $last_name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateEmployeeModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.partner_name, partner_name) &&
            const DeepCollectionEquality()
                .equals(other.phone_number, phone_number) &&
            const DeepCollectionEquality()
                .equals(other.first_name, first_name) &&
            const DeepCollectionEquality().equals(other.last_name, last_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(partner_name),
      const DeepCollectionEquality().hash(phone_number),
      const DeepCollectionEquality().hash(first_name),
      const DeepCollectionEquality().hash(last_name));

  @JsonKey(ignore: true)
  @override
  _$$_CreateEmployeeModelCopyWith<_$_CreateEmployeeModel> get copyWith =>
      __$$_CreateEmployeeModelCopyWithImpl<_$_CreateEmployeeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateEmployeeModelToJson(
      this,
    );
  }
}

abstract class _CreateEmployeeModel implements CreateEmployeeModel {
  const factory _CreateEmployeeModel(
      {final String? id,
      final String email,
      final String password,
      final String partner_name,
      final String phone_number,
      final String first_name,
      final String last_name}) = _$_CreateEmployeeModel;

  factory _CreateEmployeeModel.fromJson(Map<String, dynamic> json) =
      _$_CreateEmployeeModel.fromJson;

  @override
  String? get id;
  @override
  String get email;
  @override
  String get password;
  @override
  String get partner_name;
  @override
  String get phone_number;
  @override
  String get first_name;
  @override
  String get last_name;
  @override
  @JsonKey(ignore: true)
  _$$_CreateEmployeeModelCopyWith<_$_CreateEmployeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
