import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/constants/LGEnums.dart';

part 'ChangePasswordState.freezed.dart';

@freezed
abstract class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    @Default(CHANGE_PWD_STATE.VERIFY_PWD) CHANGE_PWD_STATE changePasswordState,
    @Default(false) bool isNextActionEnable,
  }) = _ChangePasswordState;
}

class ChangePasswordStateNotifier extends StateNotifier<ChangePasswordState> {
  ChangePasswordStateNotifier() : super(const ChangePasswordState());

  void setChangePasswordState(CHANGE_PWD_STATE newChangePasswordState) {
    state = state.copyWith(changePasswordState: newChangePasswordState);
  }

  void setNextActionButtonEnable(bool nextAction) {
    state = state.copyWith(isNextActionEnable: nextAction);
  }
}

final changePasswordStateNotifierProvider = AutoDisposeStateNotifierProvider<
    ChangePasswordStateNotifier, ChangePasswordState>(
  (ref) => ChangePasswordStateNotifier(),
);
