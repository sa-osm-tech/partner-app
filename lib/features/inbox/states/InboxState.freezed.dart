// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'InboxState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InboxState {
  List<NotificationModel> get notifications =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InboxStateCopyWith<InboxState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxStateCopyWith<$Res> {
  factory $InboxStateCopyWith(
          InboxState value, $Res Function(InboxState) then) =
      _$InboxStateCopyWithImpl<$Res>;
  $Res call({List<NotificationModel> notifications});
}

/// @nodoc
class _$InboxStateCopyWithImpl<$Res> implements $InboxStateCopyWith<$Res> {
  _$InboxStateCopyWithImpl(this._value, this._then);

  final InboxState _value;
  // ignore: unused_field
  final $Res Function(InboxState) _then;

  @override
  $Res call({
    Object? notifications = freezed,
  }) {
    return _then(_value.copyWith(
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_InboxStateCopyWith<$Res>
    implements $InboxStateCopyWith<$Res> {
  factory _$$_InboxStateCopyWith(
          _$_InboxState value, $Res Function(_$_InboxState) then) =
      __$$_InboxStateCopyWithImpl<$Res>;
  @override
  $Res call({List<NotificationModel> notifications});
}

/// @nodoc
class __$$_InboxStateCopyWithImpl<$Res> extends _$InboxStateCopyWithImpl<$Res>
    implements _$$_InboxStateCopyWith<$Res> {
  __$$_InboxStateCopyWithImpl(
      _$_InboxState _value, $Res Function(_$_InboxState) _then)
      : super(_value, (v) => _then(v as _$_InboxState));

  @override
  _$_InboxState get _value => super._value as _$_InboxState;

  @override
  $Res call({
    Object? notifications = freezed,
  }) {
    return _then(_$_InboxState(
      notifications: notifications == freezed
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
    ));
  }
}

/// @nodoc

class _$_InboxState implements _InboxState {
  const _$_InboxState({final List<NotificationModel> notifications = const []})
      : _notifications = notifications;

  final List<NotificationModel> _notifications;
  @override
  @JsonKey()
  List<NotificationModel> get notifications {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  String toString() {
    return 'InboxState(notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InboxState &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notifications));

  @JsonKey(ignore: true)
  @override
  _$$_InboxStateCopyWith<_$_InboxState> get copyWith =>
      __$$_InboxStateCopyWithImpl<_$_InboxState>(this, _$identity);
}

abstract class _InboxState implements InboxState {
  const factory _InboxState({final List<NotificationModel> notifications}) =
      _$_InboxState;

  @override
  List<NotificationModel> get notifications;
  @override
  @JsonKey(ignore: true)
  _$$_InboxStateCopyWith<_$_InboxState> get copyWith =>
      throw _privateConstructorUsedError;
}
