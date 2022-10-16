import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';
import 'package:logerex_partner/features/more-settings/widgets/personal-profile/ContactInfoSection.dart';
import 'package:logerex_partner/features/more-settings/widgets/personal-profile/OthersSection.dart';
import 'package:logerex_partner/features/more-settings/widgets/personal-profile/PersonalInfoSection.dart';
import 'package:logerex_partner/features/more-settings/widgets/personal-profile/SubmitUpdateRequestButton.dart';
import 'package:logerex_partner/preferences/UserPreferences.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';
import 'package:logerex_partner/utils/http/LGHttp.dart';

class PersonalProfileScreen extends HookConsumerWidget {
  const PersonalProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          final userId = await UserPreferences().getUserId();
          await LGHttp().getUserProfile(userId);
        });
        return null;
      },
      [],
    );
    return Scaffold(
      backgroundColor: LGColors.gray_10,
      appBar: LGAppbar(
        title: context.l10n.personal_profile_title,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Wrap(
          runSpacing: 10,
          children: const [
            PersonalInfoSection(),
            ContactInfoSection(),
            OthersSection(),
            SizedBox(
              height: 5,
              width: double.infinity,
            ),
            Align(
              alignment: Alignment.center,
              child: SubmitUpdateRequestButton(),
            )
          ],
        ),
      ),
    );
  }
}
