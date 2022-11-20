// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'EmployeeManagementState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmployeeManagementState {
  List<EmployeeModel>? get employees => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeeManagementStateCopyWith<EmployeeManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeManagementStateCopyWith<$Res> {
  factory $EmployeeManagementStateCopyWith(EmployeeManagementState value,
          $Res Function(EmployeeManagementState) then) =
      _$EmployeeManagementStateCopyWithImpl<$Res>;
  $Res call({List<EmployeeModel>? employees});
}

/// @nodoc
class _$EmployeeManagementStateCopyWithImpl<$Res>
    implements $EmployeeManagementStateCopyWith<$Res> {
  _$EmployeeManagementStateCopyWithImpl(this._value, this._then);

  final EmployeeManagementState _value;
  // ignore: unused_field
  final $Res Function(EmployeeManagementState) _then;

  @override
  $Res call({
    Object? employees = freezed,
  }) {
    return _then(_value.copyWith(
      employees: employees == freezed
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_EmployeeManagementStateCopyWith<$Res>
    implements $EmployeeManagementStateCopyWith<$Res> {
  factory _$$_EmployeeManagementStateCopyWith(_$_EmployeeManagementState value,
          $Res Function(_$_EmployeeManagementState) then) =
      __$$_EmployeeManagementStateCopyWithImpl<$Res>;
  @override
  $Res call({List<EmployeeModel>? employees});
}

/// @nodoc
class __$$_EmployeeManagementStateCopyWithImpl<$Res>
    extends _$EmployeeManagementStateCopyWithImpl<$Res>
    implements _$$_EmployeeManagementStateCopyWith<$Res> {
  __$$_EmployeeManagementStateCopyWithImpl(_$_EmployeeManagementState _value,
      $Res Function(_$_EmployeeManagementState) _then)
      : super(_value, (v) => _then(v as _$_EmployeeManagementState));

  @override
  _$_EmployeeManagementState get _value =>
      super._value as _$_EmployeeManagementState;

  @override
  $Res call({
    Object? employees = freezed,
  }) {
    return _then(_$_EmployeeManagementState(
      employees: employees == freezed
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>?,
    ));
  }
}

/// @nodoc

class _$_EmployeeManagementState implements _EmployeeManagementState {
  const _$_EmployeeManagementState({final List<EmployeeModel>? employees})
      : _employees = employees;

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
    return 'EmployeeManagementState(employees: $employees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeManagementState &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_employees));

  @JsonKey(ignore: true)
  @override
  _$$_EmployeeManagementStateCopyWith<_$_EmployeeManagementState>
      get copyWith =>
          __$$_EmployeeManagementStateCopyWithImpl<_$_EmployeeManagementState>(
              this, _$identity);
}

abstract class _EmployeeManagementState implements EmployeeManagementState {
  const factory _EmployeeManagementState(
      {final List<EmployeeModel>? employees}) = _$_EmployeeManagementState;

  @override
  List<EmployeeModel>? get employees;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeManagementStateCopyWith<_$_EmployeeManagementState>
      get copyWith => throw _privateConstructorUsedError;
}
