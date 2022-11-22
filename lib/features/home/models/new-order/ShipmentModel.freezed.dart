// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ShipmentModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShipmentModel _$ShipmentModelFromJson(Map<String, dynamic> json) {
  return _ShipmentModel.fromJson(json);
}

/// @nodoc
mixin _$ShipmentModel {
  String? get id => throw _privateConstructorUsedError;
  String get driver_id => throw _privateConstructorUsedError;
  String get driver_first_name => throw _privateConstructorUsedError;
  String get driver_last_name => throw _privateConstructorUsedError;
  String get order_id => throw _privateConstructorUsedError;
  String get owner_id => throw _privateConstructorUsedError;
  DateTime? get create_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipmentModelCopyWith<ShipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentModelCopyWith<$Res> {
  factory $ShipmentModelCopyWith(
          ShipmentModel value, $Res Function(ShipmentModel) then) =
      _$ShipmentModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String driver_id,
      String driver_first_name,
      String driver_last_name,
      String order_id,
      String owner_id,
      DateTime? create_at});
}

/// @nodoc
class _$ShipmentModelCopyWithImpl<$Res>
    implements $ShipmentModelCopyWith<$Res> {
  _$ShipmentModelCopyWithImpl(this._value, this._then);

  final ShipmentModel _value;
  // ignore: unused_field
  final $Res Function(ShipmentModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? driver_id = freezed,
    Object? driver_first_name = freezed,
    Object? driver_last_name = freezed,
    Object? order_id = freezed,
    Object? owner_id = freezed,
    Object? create_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      driver_id: driver_id == freezed
          ? _value.driver_id
          : driver_id // ignore: cast_nullable_to_non_nullable
              as String,
      driver_first_name: driver_first_name == freezed
          ? _value.driver_first_name
          : driver_first_name // ignore: cast_nullable_to_non_nullable
              as String,
      driver_last_name: driver_last_name == freezed
          ? _value.driver_last_name
          : driver_last_name // ignore: cast_nullable_to_non_nullable
              as String,
      order_id: order_id == freezed
          ? _value.order_id
          : order_id // ignore: cast_nullable_to_non_nullable
              as String,
      owner_id: owner_id == freezed
          ? _value.owner_id
          : owner_id // ignore: cast_nullable_to_non_nullable
              as String,
      create_at: create_at == freezed
          ? _value.create_at
          : create_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_ShipmentModelCopyWith<$Res>
    implements $ShipmentModelCopyWith<$Res> {
  factory _$$_ShipmentModelCopyWith(
          _$_ShipmentModel value, $Res Function(_$_ShipmentModel) then) =
      __$$_ShipmentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String driver_id,
      String driver_first_name,
      String driver_last_name,
      String order_id,
      String owner_id,
      DateTime? create_at});
}

/// @nodoc
class __$$_ShipmentModelCopyWithImpl<$Res>
    extends _$ShipmentModelCopyWithImpl<$Res>
    implements _$$_ShipmentModelCopyWith<$Res> {
  __$$_ShipmentModelCopyWithImpl(
      _$_ShipmentModel _value, $Res Function(_$_ShipmentModel) _then)
      : super(_value, (v) => _then(v as _$_ShipmentModel));

  @override
  _$_ShipmentModel get _value => super._value as _$_ShipmentModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? driver_id = freezed,
    Object? driver_first_name = freezed,
    Object? driver_last_name = freezed,
    Object? order_id = freezed,
    Object? owner_id = freezed,
    Object? create_at = freezed,
  }) {
    return _then(_$_ShipmentModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      driver_id: driver_id == freezed
          ? _value.driver_id
          : driver_id // ignore: cast_nullable_to_non_nullable
              as String,
      driver_first_name: driver_first_name == freezed
          ? _value.driver_first_name
          : driver_first_name // ignore: cast_nullable_to_non_nullable
              as String,
      driver_last_name: driver_last_name == freezed
          ? _value.driver_last_name
          : driver_last_name // ignore: cast_nullable_to_non_nullable
              as String,
      order_id: order_id == freezed
          ? _value.order_id
          : order_id // ignore: cast_nullable_to_non_nullable
              as String,
      owner_id: owner_id == freezed
          ? _value.owner_id
          : owner_id // ignore: cast_nullable_to_non_nullable
              as String,
      create_at: create_at == freezed
          ? _value.create_at
          : create_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ShipmentModel implements _ShipmentModel {
  const _$_ShipmentModel(
      {this.id,
      this.driver_id = '-',
      this.driver_first_name = '-',
      this.driver_last_name = '-',
      this.order_id = '-',
      this.owner_id = '-',
      this.create_at});

  factory _$_ShipmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShipmentModelFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey()
  final String driver_id;
  @override
  @JsonKey()
  final String driver_first_name;
  @override
  @JsonKey()
  final String driver_last_name;
  @override
  @JsonKey()
  final String order_id;
  @override
  @JsonKey()
  final String owner_id;
  @override
  final DateTime? create_at;

  @override
  String toString() {
    return 'ShipmentModel(id: $id, driver_id: $driver_id, driver_first_name: $driver_first_name, driver_last_name: $driver_last_name, order_id: $order_id, owner_id: $owner_id, create_at: $create_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShipmentModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.driver_id, driver_id) &&
            const DeepCollectionEquality()
                .equals(other.driver_first_name, driver_first_name) &&
            const DeepCollectionEquality()
                .equals(other.driver_last_name, driver_last_name) &&
            const DeepCollectionEquality().equals(other.order_id, order_id) &&
            const DeepCollectionEquality().equals(other.owner_id, owner_id) &&
            const DeepCollectionEquality().equals(other.create_at, create_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(driver_id),
      const DeepCollectionEquality().hash(driver_first_name),
      const DeepCollectionEquality().hash(driver_last_name),
      const DeepCollectionEquality().hash(order_id),
      const DeepCollectionEquality().hash(owner_id),
      const DeepCollectionEquality().hash(create_at));

  @JsonKey(ignore: true)
  @override
  _$$_ShipmentModelCopyWith<_$_ShipmentModel> get copyWith =>
      __$$_ShipmentModelCopyWithImpl<_$_ShipmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipmentModelToJson(
      this,
    );
  }
}

abstract class _ShipmentModel implements ShipmentModel {
  const factory _ShipmentModel(
      {final String? id,
      final String driver_id,
      final String driver_first_name,
      final String driver_last_name,
      final String order_id,
      final String owner_id,
      final DateTime? create_at}) = _$_ShipmentModel;

  factory _ShipmentModel.fromJson(Map<String, dynamic> json) =
      _$_ShipmentModel.fromJson;

  @override
  String? get id;
  @override
  String get driver_id;
  @override
  String get driver_first_name;
  @override
  String get driver_last_name;
  @override
  String get order_id;
  @override
  String get owner_id;
  @override
  DateTime? get create_at;
  @override
  @JsonKey(ignore: true)
  _$$_ShipmentModelCopyWith<_$_ShipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
