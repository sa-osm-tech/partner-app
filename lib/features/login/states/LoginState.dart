import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/constants/LGEnums.dart';

part 'LoginState.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LOGIN_STATE.DEFAULT) LOGIN_STATE loginState,
  }) = _LoginState;
}

class LoginStateNotifier extends StateNotifier<LoginState> {
  LoginStateNotifier() : super(const LoginState());

  void setLoginState(LOGIN_STATE newLoginState) {
    state = state.copyWith(loginState: newLoginState);
  }
}

final loginStateNotifierProvider =
    AutoDisposeStateNotifierProvider<LoginStateNotifier, LoginState>(
  (ref) => LoginStateNotifier(),
);
