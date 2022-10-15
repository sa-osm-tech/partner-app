import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/more-settings/models/personal-profile/PersonalProfileModel.dart';

part 'PersonalProfileState.freezed.dart';

@freezed
abstract class PersonalProfileState with _$PersonalProfileState {
  const factory PersonalProfileState({
    PersonalProfileModel? profile,
  }) = _PersonalProfileState;
}

class PersonalProfileStateNotifier extends StateNotifier<PersonalProfileState> {
  PersonalProfileStateNotifier() : super(const PersonalProfileState());

  setProfile(PersonalProfileModel newProfile) {
    state = state.copyWith(profile: newProfile);
  }
}

final personalProfileStateNotifierProvider = AutoDisposeStateNotifierProvider<
    PersonalProfileStateNotifier, PersonalProfileState>(
  (ref) => PersonalProfileStateNotifier(),
);
