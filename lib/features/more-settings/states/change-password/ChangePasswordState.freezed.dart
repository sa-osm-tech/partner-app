// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ChangePasswordState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangePasswordState {
  CHANGE_PWD_STATE get changePasswordState =>
      throw _privateConstructorUsedError;
  bool get isNextActionEnable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res>;
  $Res call({CHANGE_PWD_STATE changePasswordState, bool isNextActionEnable});
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  final ChangePasswordState _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordState) _then;

  @override
  $Res call({
    Object? changePasswordState = freezed,
    Object? isNextActionEnable = freezed,
  }) {
    return _then(_value.copyWith(
      changePasswordState: changePasswordState == freezed
          ? _value.changePasswordState
          : changePasswordState // ignore: cast_nullable_to_non_nullable
              as CHANGE_PWD_STATE,
      isNextActionEnable: isNextActionEnable == freezed
          ? _value.isNextActionEnable
          : isNextActionEnable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ChangePasswordStateCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$$_ChangePasswordStateCopyWith(_$_ChangePasswordState value,
          $Res Function(_$_ChangePasswordState) then) =
      __$$_ChangePasswordStateCopyWithImpl<$Res>;
  @override
  $Res call({CHANGE_PWD_STATE changePasswordState, bool isNextActionEnable});
}

/// @nodoc
class __$$_ChangePasswordStateCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements _$$_ChangePasswordStateCopyWith<$Res> {
  __$$_ChangePasswordStateCopyWithImpl(_$_ChangePasswordState _value,
      $Res Function(_$_ChangePasswordState) _then)
      : super(_value, (v) => _then(v as _$_ChangePasswordState));

  @override
  _$_ChangePasswordState get _value => super._value as _$_ChangePasswordState;

  @override
  $Res call({
    Object? changePasswordState = freezed,
    Object? isNextActionEnable = freezed,
  }) {
    return _then(_$_ChangePasswordState(
      changePasswordState: changePasswordState == freezed
          ? _value.changePasswordState
          : changePasswordState // ignore: cast_nullable_to_non_nullable
              as CHANGE_PWD_STATE,
      isNextActionEnable: isNextActionEnable == freezed
          ? _value.isNextActionEnable
          : isNextActionEnable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangePasswordState implements _ChangePasswordState {
  const _$_ChangePasswordState(
      {this.changePasswordState = CHANGE_PWD_STATE.VERIFY_PWD,
      this.isNextActionEnable = false});

  @override
  @JsonKey()
  final CHANGE_PWD_STATE changePasswordState;
  @override
  @JsonKey()
  final bool isNextActionEnable;

  @override
  String toString() {
    return 'ChangePasswordState(changePasswordState: $changePasswordState, isNextActionEnable: $isNextActionEnable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordState &&
            const DeepCollectionEquality()
                .equals(other.changePasswordState, changePasswordState) &&
            const DeepCollectionEquality()
                .equals(other.isNextActionEnable, isNextActionEnable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(changePasswordState),
      const DeepCollectionEquality().hash(isNextActionEnable));

  @JsonKey(ignore: true)
  @override
  _$$_ChangePasswordStateCopyWith<_$_ChangePasswordState> get copyWith =>
      __$$_ChangePasswordStateCopyWithImpl<_$_ChangePasswordState>(
          this, _$identity);
}

abstract class _ChangePasswordState implements ChangePasswordState {
  const factory _ChangePasswordState(
      {final CHANGE_PWD_STATE changePasswordState,
      final bool isNextActionEnable}) = _$_ChangePasswordState;

  @override
  CHANGE_PWD_STATE get changePasswordState;
  @override
  bool get isNextActionEnable;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePasswordStateCopyWith<_$_ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
