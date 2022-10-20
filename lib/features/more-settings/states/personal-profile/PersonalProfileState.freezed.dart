// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'PersonalProfileState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonalProfileState {
  PersonalProfileModel? get profile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonalProfileStateCopyWith<PersonalProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalProfileStateCopyWith<$Res> {
  factory $PersonalProfileStateCopyWith(PersonalProfileState value,
          $Res Function(PersonalProfileState) then) =
      _$PersonalProfileStateCopyWithImpl<$Res>;
  $Res call({PersonalProfileModel? profile});

  $PersonalProfileModelCopyWith<$Res>? get profile;
}

/// @nodoc
class _$PersonalProfileStateCopyWithImpl<$Res>
    implements $PersonalProfileStateCopyWith<$Res> {
  _$PersonalProfileStateCopyWithImpl(this._value, this._then);

  final PersonalProfileState _value;
  // ignore: unused_field
  final $Res Function(PersonalProfileState) _then;

  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as PersonalProfileModel?,
    ));
  }

  @override
  $PersonalProfileModelCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $PersonalProfileModelCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc
abstract class _$$_PersonalProfileStateCopyWith<$Res>
    implements $PersonalProfileStateCopyWith<$Res> {
  factory _$$_PersonalProfileStateCopyWith(_$_PersonalProfileState value,
          $Res Function(_$_PersonalProfileState) then) =
      __$$_PersonalProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({PersonalProfileModel? profile});

  @override
  $PersonalProfileModelCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$_PersonalProfileStateCopyWithImpl<$Res>
    extends _$PersonalProfileStateCopyWithImpl<$Res>
    implements _$$_PersonalProfileStateCopyWith<$Res> {
  __$$_PersonalProfileStateCopyWithImpl(_$_PersonalProfileState _value,
      $Res Function(_$_PersonalProfileState) _then)
      : super(_value, (v) => _then(v as _$_PersonalProfileState));

  @override
  _$_PersonalProfileState get _value => super._value as _$_PersonalProfileState;

  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(_$_PersonalProfileState(
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as PersonalProfileModel?,
    ));
  }
}

/// @nodoc

class _$_PersonalProfileState implements _PersonalProfileState {
  const _$_PersonalProfileState({this.profile});

  @override
  final PersonalProfileModel? profile;

  @override
  String toString() {
    return 'PersonalProfileState(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalProfileState &&
            const DeepCollectionEquality().equals(other.profile, profile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(profile));

  @JsonKey(ignore: true)
  @override
  _$$_PersonalProfileStateCopyWith<_$_PersonalProfileState> get copyWith =>
      __$$_PersonalProfileStateCopyWithImpl<_$_PersonalProfileState>(
          this, _$identity);
}

abstract class _PersonalProfileState implements PersonalProfileState {
  const factory _PersonalProfileState({final PersonalProfileModel? profile}) =
      _$_PersonalProfileState;

  @override
  PersonalProfileModel? get profile;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalProfileStateCopyWith<_$_PersonalProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
