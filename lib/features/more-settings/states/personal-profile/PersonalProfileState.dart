import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/more-settings/models/personal-profile/PersonalProfileModel.dart';
import 'package:logerex_partner/preferences/UserPreferences.dart';
import 'package:logerex_partner/utils/http/LGHttp.dart';

part 'PersonalProfileState.freezed.dart';

@freezed
abstract class PersonalProfileState with _$PersonalProfileState {
  const factory PersonalProfileState({
    PersonalProfileModel? profile,
  }) = _PersonalProfileState;
}

class PersonalProfileStateNotifier extends StateNotifier<PersonalProfileState> {
  PersonalProfileStateNotifier() : super(const PersonalProfileState());

  Future<void> getUserProfile() async {
    final userId = await UserPreferences().getUserId();
    final response = await LGHttp().getUserProfile(userId);
    state = state.copyWith(profile: response);
  }
}

final personalProfileStateNotifierProvider = AutoDisposeStateNotifierProvider<
    PersonalProfileStateNotifier, PersonalProfileState>(
  (ref) => PersonalProfileStateNotifier(),
);
