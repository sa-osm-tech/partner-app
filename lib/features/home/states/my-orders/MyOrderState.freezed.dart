// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'MyOrderState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyOrderState {
  List<OrderModel> get notStartedOrders => throw _privateConstructorUsedError;
  List<OrderModel> get onGoingOrders => throw _privateConstructorUsedError;
  List<OrderModel> get successOrders => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyOrderStateCopyWith<MyOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrderStateCopyWith<$Res> {
  factory $MyOrderStateCopyWith(
          MyOrderState value, $Res Function(MyOrderState) then) =
      _$MyOrderStateCopyWithImpl<$Res>;
  $Res call(
      {List<OrderModel> notStartedOrders,
      List<OrderModel> onGoingOrders,
      List<OrderModel> successOrders});
}

/// @nodoc
class _$MyOrderStateCopyWithImpl<$Res> implements $MyOrderStateCopyWith<$Res> {
  _$MyOrderStateCopyWithImpl(this._value, this._then);

  final MyOrderState _value;
  // ignore: unused_field
  final $Res Function(MyOrderState) _then;

  @override
  $Res call({
    Object? notStartedOrders = freezed,
    Object? onGoingOrders = freezed,
    Object? successOrders = freezed,
  }) {
    return _then(_value.copyWith(
      notStartedOrders: notStartedOrders == freezed
          ? _value.notStartedOrders
          : notStartedOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      onGoingOrders: onGoingOrders == freezed
          ? _value.onGoingOrders
          : onGoingOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      successOrders: successOrders == freezed
          ? _value.successOrders
          : successOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_MyOrderStateCopyWith<$Res>
    implements $MyOrderStateCopyWith<$Res> {
  factory _$$_MyOrderStateCopyWith(
          _$_MyOrderState value, $Res Function(_$_MyOrderState) then) =
      __$$_MyOrderStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<OrderModel> notStartedOrders,
      List<OrderModel> onGoingOrders,
      List<OrderModel> successOrders});
}

/// @nodoc
class __$$_MyOrderStateCopyWithImpl<$Res>
    extends _$MyOrderStateCopyWithImpl<$Res>
    implements _$$_MyOrderStateCopyWith<$Res> {
  __$$_MyOrderStateCopyWithImpl(
      _$_MyOrderState _value, $Res Function(_$_MyOrderState) _then)
      : super(_value, (v) => _then(v as _$_MyOrderState));

  @override
  _$_MyOrderState get _value => super._value as _$_MyOrderState;

  @override
  $Res call({
    Object? notStartedOrders = freezed,
    Object? onGoingOrders = freezed,
    Object? successOrders = freezed,
  }) {
    return _then(_$_MyOrderState(
      notStartedOrders: notStartedOrders == freezed
          ? _value._notStartedOrders
          : notStartedOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      onGoingOrders: onGoingOrders == freezed
          ? _value._onGoingOrders
          : onGoingOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      successOrders: successOrders == freezed
          ? _value._successOrders
          : successOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ));
  }
}

/// @nodoc

class _$_MyOrderState implements _MyOrderState {
  const _$_MyOrderState(
      {final List<OrderModel> notStartedOrders = const [],
      final List<OrderModel> onGoingOrders = const [],
      final List<OrderModel> successOrders = const []})
      : _notStartedOrders = notStartedOrders,
        _onGoingOrders = onGoingOrders,
        _successOrders = successOrders;

  final List<OrderModel> _notStartedOrders;
  @override
  @JsonKey()
  List<OrderModel> get notStartedOrders {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notStartedOrders);
  }

  final List<OrderModel> _onGoingOrders;
  @override
  @JsonKey()
  List<OrderModel> get onGoingOrders {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_onGoingOrders);
  }

  final List<OrderModel> _successOrders;
  @override
  @JsonKey()
  List<OrderModel> get successOrders {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_successOrders);
  }

  @override
  String toString() {
    return 'MyOrderState(notStartedOrders: $notStartedOrders, onGoingOrders: $onGoingOrders, successOrders: $successOrders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyOrderState &&
            const DeepCollectionEquality()
                .equals(other._notStartedOrders, _notStartedOrders) &&
            const DeepCollectionEquality()
                .equals(other._onGoingOrders, _onGoingOrders) &&
            const DeepCollectionEquality()
                .equals(other._successOrders, _successOrders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notStartedOrders),
      const DeepCollectionEquality().hash(_onGoingOrders),
      const DeepCollectionEquality().hash(_successOrders));

  @JsonKey(ignore: true)
  @override
  _$$_MyOrderStateCopyWith<_$_MyOrderState> get copyWith =>
      __$$_MyOrderStateCopyWithImpl<_$_MyOrderState>(this, _$identity);
}

abstract class _MyOrderState implements MyOrderState {
  const factory _MyOrderState(
      {final List<OrderModel> notStartedOrders,
      final List<OrderModel> onGoingOrders,
      final List<OrderModel> successOrders}) = _$_MyOrderState;

  @override
  List<OrderModel> get notStartedOrders;
  @override
  List<OrderModel> get onGoingOrders;
  @override
  List<OrderModel> get successOrders;
  @override
  @JsonKey(ignore: true)
  _$$_MyOrderStateCopyWith<_$_MyOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
