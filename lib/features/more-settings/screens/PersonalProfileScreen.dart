import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';
import 'package:logerex_partner/features/more-settings/widgets/personal-profile/ContactInfoSection.dart';
import 'package:logerex_partner/features/more-settings/widgets/personal-profile/OthersSection.dart';
import 'package:logerex_partner/features/more-settings/widgets/personal-profile/PersonalInfoSection.dart';
import 'package:logerex_partner/features/more-settings/widgets/personal-profile/SubmitUpdateRequestButton.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';

class PersonalProfileScreen extends HookConsumerWidget {
  const PersonalProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: LGColors.gray_10,
      appBar: LGAppbar(
        title: context.l10n.personal_profile_title,
        // actions: [
        //   Row(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(12.0),
        //         child: RichText(
        //           text: TextSpan(
        //             text: context.l10n.login_forgot_password_back,
        //             style: LGTextStyle.p3.black,
        //             recognizer: TapGestureRecognizer()..onTap = () {},
        //           ),
        //         ),
        //       ),
        //     ],
        //   )
        // ],
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
