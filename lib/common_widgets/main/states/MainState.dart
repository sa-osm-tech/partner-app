import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'MainState.freezed.dart';

@freezed
abstract class MainState with _$MainState {
  const factory MainState({
    @Default(0) int selectedTabIdx,
  }) = _MainState;
}

class MainStateNotifier extends StateNotifier<MainState> {
  MainStateNotifier() : super(const MainState());

  void setSelectedTab(int tabIdx) {
    if (tabIdx != state.selectedTabIdx) {
      state = state.copyWith(selectedTabIdx: tabIdx);
    }
  }
}

final mainStateNotifierProvider =
    StateNotifierProvider<MainStateNotifier, MainState>(
  (ref) => MainStateNotifier(),
);
