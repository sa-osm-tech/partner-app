// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'NewOrderState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewOrderState {
  List<OrderModel>? get newOrders => throw _privateConstructorUsedError;
  EmployeeModel? get toBeAssignedDriver => throw _privateConstructorUsedError;
  List<EmployeeModel>? get employees => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewOrderStateCopyWith<NewOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewOrderStateCopyWith<$Res> {
  factory $NewOrderStateCopyWith(
          NewOrderState value, $Res Function(NewOrderState) then) =
      _$NewOrderStateCopyWithImpl<$Res>;
  $Res call(
      {List<OrderModel>? newOrders,
      EmployeeModel? toBeAssignedDriver,
      List<EmployeeModel>? employees});

  $EmployeeModelCopyWith<$Res>? get toBeAssignedDriver;
}

/// @nodoc
class _$NewOrderStateCopyWithImpl<$Res>
    implements $NewOrderStateCopyWith<$Res> {
  _$NewOrderStateCopyWithImpl(this._value, this._then);

  final NewOrderState _value;
  // ignore: unused_field
  final $Res Function(NewOrderState) _then;

  @override
  $Res call({
    Object? newOrders = freezed,
    Object? toBeAssignedDriver = freezed,
    Object? employees = freezed,
  }) {
    return _then(_value.copyWith(
      newOrders: newOrders == freezed
          ? _value.newOrders
          : newOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
      toBeAssignedDriver: toBeAssignedDriver == freezed
          ? _value.toBeAssignedDriver
          : toBeAssignedDriver // ignore: cast_nullable_to_non_nullable
              as EmployeeModel?,
      employees: employees == freezed
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>?,
    ));
  }

  @override
  $EmployeeModelCopyWith<$Res>? get toBeAssignedDriver {
    if (_value.toBeAssignedDriver == null) {
      return null;
    }

    return $EmployeeModelCopyWith<$Res>(_value.toBeAssignedDriver!, (value) {
      return _then(_value.copyWith(toBeAssignedDriver: value));
    });
  }
}

/// @nodoc
abstract class _$$_NewOrderStateCopyWith<$Res>
    implements $NewOrderStateCopyWith<$Res> {
  factory _$$_NewOrderStateCopyWith(
          _$_NewOrderState value, $Res Function(_$_NewOrderState) then) =
      __$$_NewOrderStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<OrderModel>? newOrders,
      EmployeeModel? toBeAssignedDriver,
      List<EmployeeModel>? employees});

  @override
  $EmployeeModelCopyWith<$Res>? get toBeAssignedDriver;
}

/// @nodoc
class __$$_NewOrderStateCopyWithImpl<$Res>
    extends _$NewOrderStateCopyWithImpl<$Res>
    implements _$$_NewOrderStateCopyWith<$Res> {
  __$$_NewOrderStateCopyWithImpl(
      _$_NewOrderState _value, $Res Function(_$_NewOrderState) _then)
      : super(_value, (v) => _then(v as _$_NewOrderState));

  @override
  _$_NewOrderState get _value => super._value as _$_NewOrderState;

  @override
  $Res call({
    Object? newOrders = freezed,
    Object? toBeAssignedDriver = freezed,
    Object? employees = freezed,
  }) {
    return _then(_$_NewOrderState(
      newOrders: newOrders == freezed
          ? _value._newOrders
          : newOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
      toBeAssignedDriver: toBeAssignedDriver == freezed
          ? _value.toBeAssignedDriver
          : toBeAssignedDriver // ignore: cast_nullable_to_non_nullable
              as EmployeeModel?,
      employees: employees == freezed
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>?,
    ));
  }
}

/// @nodoc

class _$_NewOrderState implements _NewOrderState {
  const _$_NewOrderState(
      {final List<OrderModel>? newOrders,
      this.toBeAssignedDriver,
      final List<EmployeeModel>? employees})
      : _newOrders = newOrders,
        _employees = employees;

  final List<OrderModel>? _newOrders;
  @override
  List<OrderModel>? get newOrders {
    final value = _newOrders;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final EmployeeModel? toBeAssignedDriver;
  final List<EmployeeModel>? _employees;
  @override
  List<EmployeeModel>? get employees {
    final value = _employees;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewOrderState(newOrders: $newOrders, toBeAssignedDriver: $toBeAssignedDriver, employees: $employees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewOrderState &&
            const DeepCollectionEquality()
                .equals(other._newOrders, _newOrders) &&
            const DeepCollectionEquality()
                .equals(other.toBeAssignedDriver, toBeAssignedDriver) &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_newOrders),
      const DeepCollectionEquality().hash(toBeAssignedDriver),
      const DeepCollectionEquality().hash(_employees));

  @JsonKey(ignore: true)
  @override
  _$$_NewOrderStateCopyWith<_$_NewOrderState> get copyWith =>
      __$$_NewOrderStateCopyWithImpl<_$_NewOrderState>(this, _$identity);
}

abstract class _NewOrderState implements NewOrderState {
  const factory _NewOrderState(
      {final List<OrderModel>? newOrders,
      final EmployeeModel? toBeAssignedDriver,
      final List<EmployeeModel>? employees}) = _$_NewOrderState;

  @override
  List<OrderModel>? get newOrders;
  @override
  EmployeeModel? get toBeAssignedDriver;
  @override
  List<EmployeeModel>? get employees;
  @override
  @JsonKey(ignore: true)
  _$$_NewOrderStateCopyWith<_$_NewOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
