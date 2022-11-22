// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'OrderModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  String? get id => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get vehicle_type => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  String get phone_number => throw _privateConstructorUsedError;
  String get start_address => throw _privateConstructorUsedError;
  DateTime? get start_time => throw _privateConstructorUsedError;
  String get start_province => throw _privateConstructorUsedError;
  String get destination_address => throw _privateConstructorUsedError;
  DateTime? get destination_time => throw _privateConstructorUsedError;
  String get destination_province => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  String get customer_name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime? get create_at => throw _privateConstructorUsedError;
  ShipmentModel? get shipment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      int price,
      String vehicle_type,
      int weight,
      String phone_number,
      String start_address,
      DateTime? start_time,
      String start_province,
      String destination_address,
      DateTime? destination_time,
      String destination_province,
      String details,
      String customer_name,
      String status,
      DateTime? create_at,
      ShipmentModel? shipment});

  $ShipmentModelCopyWith<$Res>? get shipment;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res> implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  final OrderModel _value;
  // ignore: unused_field
  final $Res Function(OrderModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? vehicle_type = freezed,
    Object? weight = freezed,
    Object? phone_number = freezed,
    Object? start_address = freezed,
    Object? start_time = freezed,
    Object? start_province = freezed,
    Object? destination_address = freezed,
    Object? destination_time = freezed,
    Object? destination_province = freezed,
    Object? details = freezed,
    Object? customer_name = freezed,
    Object? status = freezed,
    Object? create_at = freezed,
    Object? shipment = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      vehicle_type: vehicle_type == freezed
          ? _value.vehicle_type
          : vehicle_type // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      phone_number: phone_number == freezed
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      start_address: start_address == freezed
          ? _value.start_address
          : start_address // ignore: cast_nullable_to_non_nullable
              as String,
      start_time: start_time == freezed
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start_province: start_province == freezed
          ? _value.start_province
          : start_province // ignore: cast_nullable_to_non_nullable
              as String,
      destination_address: destination_address == freezed
          ? _value.destination_address
          : destination_address // ignore: cast_nullable_to_non_nullable
              as String,
      destination_time: destination_time == freezed
          ? _value.destination_time
          : destination_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      destination_province: destination_province == freezed
          ? _value.destination_province
          : destination_province // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      customer_name: customer_name == freezed
          ? _value.customer_name
          : customer_name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      create_at: create_at == freezed
          ? _value.create_at
          : create_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shipment: shipment == freezed
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as ShipmentModel?,
    ));
  }

  @override
  $ShipmentModelCopyWith<$Res>? get shipment {
    if (_value.shipment == null) {
      return null;
    }

    return $ShipmentModelCopyWith<$Res>(_value.shipment!, (value) {
      return _then(_value.copyWith(shipment: value));
    });
  }
}

/// @nodoc
abstract class _$$_OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$_OrderModelCopyWith(
          _$_OrderModel value, $Res Function(_$_OrderModel) then) =
      __$$_OrderModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      int price,
      String vehicle_type,
      int weight,
      String phone_number,
      String start_address,
      DateTime? start_time,
      String start_province,
      String destination_address,
      DateTime? destination_time,
      String destination_province,
      String details,
      String customer_name,
      String status,
      DateTime? create_at,
      ShipmentModel? shipment});

  @override
  $ShipmentModelCopyWith<$Res>? get shipment;
}

/// @nodoc
class __$$_OrderModelCopyWithImpl<$Res> extends _$OrderModelCopyWithImpl<$Res>
    implements _$$_OrderModelCopyWith<$Res> {
  __$$_OrderModelCopyWithImpl(
      _$_OrderModel _value, $Res Function(_$_OrderModel) _then)
      : super(_value, (v) => _then(v as _$_OrderModel));

  @override
  _$_OrderModel get _value => super._value as _$_OrderModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? vehicle_type = freezed,
    Object? weight = freezed,
    Object? phone_number = freezed,
    Object? start_address = freezed,
    Object? start_time = freezed,
    Object? start_province = freezed,
    Object? destination_address = freezed,
    Object? destination_time = freezed,
    Object? destination_province = freezed,
    Object? details = freezed,
    Object? customer_name = freezed,
    Object? status = freezed,
    Object? create_at = freezed,
    Object? shipment = freezed,
  }) {
    return _then(_$_OrderModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      vehicle_type: vehicle_type == freezed
          ? _value.vehicle_type
          : vehicle_type // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      phone_number: phone_number == freezed
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      start_address: start_address == freezed
          ? _value.start_address
          : start_address // ignore: cast_nullable_to_non_nullable
              as String,
      start_time: start_time == freezed
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start_province: start_province == freezed
          ? _value.start_province
          : start_province // ignore: cast_nullable_to_non_nullable
              as String,
      destination_address: destination_address == freezed
          ? _value.destination_address
          : destination_address // ignore: cast_nullable_to_non_nullable
              as String,
      destination_time: destination_time == freezed
          ? _value.destination_time
          : destination_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      destination_province: destination_province == freezed
          ? _value.destination_province
          : destination_province // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      customer_name: customer_name == freezed
          ? _value.customer_name
          : customer_name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      create_at: create_at == freezed
          ? _value.create_at
          : create_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shipment: shipment == freezed
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as ShipmentModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_OrderModel implements _OrderModel {
  const _$_OrderModel(
      {this.id,
      this.price = 10000,
      this.vehicle_type = '-',
      this.weight = 100,
      this.phone_number = '-',
      this.start_address = '-',
      this.start_time,
      this.start_province = '-',
      this.destination_address = '-',
      this.destination_time,
      this.destination_province = '-',
      this.details = '-',
      this.customer_name = '-',
      this.status = 'notassigned',
      this.create_at,
      this.shipment});

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey()
  final int price;
  @override
  @JsonKey()
  final String vehicle_type;
  @override
  @JsonKey()
  final int weight;
  @override
  @JsonKey()
  final String phone_number;
  @override
  @JsonKey()
  final String start_address;
  @override
  final DateTime? start_time;
  @override
  @JsonKey()
  final String start_province;
  @override
  @JsonKey()
  final String destination_address;
  @override
  final DateTime? destination_time;
  @override
  @JsonKey()
  final String destination_province;
  @override
  @JsonKey()
  final String details;
  @override
  @JsonKey()
  final String customer_name;
  @override
  @JsonKey()
  final String status;
  @override
  final DateTime? create_at;
  @override
  final ShipmentModel? shipment;

  @override
  String toString() {
    return 'OrderModel(id: $id, price: $price, vehicle_type: $vehicle_type, weight: $weight, phone_number: $phone_number, start_address: $start_address, start_time: $start_time, start_province: $start_province, destination_address: $destination_address, destination_time: $destination_time, destination_province: $destination_province, details: $details, customer_name: $customer_name, status: $status, create_at: $create_at, shipment: $shipment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.vehicle_type, vehicle_type) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality()
                .equals(other.phone_number, phone_number) &&
            const DeepCollectionEquality()
                .equals(other.start_address, start_address) &&
            const DeepCollectionEquality()
                .equals(other.start_time, start_time) &&
            const DeepCollectionEquality()
                .equals(other.start_province, start_province) &&
            const DeepCollectionEquality()
                .equals(other.destination_address, destination_address) &&
            const DeepCollectionEquality()
                .equals(other.destination_time, destination_time) &&
            const DeepCollectionEquality()
                .equals(other.destination_province, destination_province) &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality()
                .equals(other.customer_name, customer_name) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.create_at, create_at) &&
            const DeepCollectionEquality().equals(other.shipment, shipment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(vehicle_type),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(phone_number),
      const DeepCollectionEquality().hash(start_address),
      const DeepCollectionEquality().hash(start_time),
      const DeepCollectionEquality().hash(start_province),
      const DeepCollectionEquality().hash(destination_address),
      const DeepCollectionEquality().hash(destination_time),
      const DeepCollectionEquality().hash(destination_province),
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(customer_name),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(create_at),
      const DeepCollectionEquality().hash(shipment));

  @JsonKey(ignore: true)
  @override
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      __$$_OrderModelCopyWithImpl<_$_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
      {final String? id,
      final int price,
      final String vehicle_type,
      final int weight,
      final String phone_number,
      final String start_address,
      final DateTime? start_time,
      final String start_province,
      final String destination_address,
      final DateTime? destination_time,
      final String destination_province,
      final String details,
      final String customer_name,
      final String status,
      final DateTime? create_at,
      final ShipmentModel? shipment}) = _$_OrderModel;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  String? get id;
  @override
  int get price;
  @override
  String get vehicle_type;
  @override
  int get weight;
  @override
  String get phone_number;
  @override
  String get start_address;
  @override
  DateTime? get start_time;
  @override
  String get start_province;
  @override
  String get destination_address;
  @override
  DateTime? get destination_time;
  @override
  String get destination_province;
  @override
  String get details;
  @override
  String get customer_name;
  @override
  String get status;
  @override
  DateTime? get create_at;
  @override
  ShipmentModel? get shipment;
  @override
  @JsonKey(ignore: true)
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
