import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/more-settings/screens/ChangePhoneNumberScreen.dart';
import 'package:logerex_partner/features/more-settings/states/personal-profile/PersonalProfileState.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';

class ContactInfoSection extends HookConsumerWidget {
  const ContactInfoSection({super.key});

  String formatPhoneNumber(String phoneNumber) {
    return '${phoneNumber.substring(0, 3)}-${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6)}';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(personalProfileStateNotifierProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: Text(
            context.l10n.personal_profile_contact_info_group_title,
            style: LGTextStyle.subheading2.black,
          ),
        ),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: LGColors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Wrap(
              direction: Axis.vertical,
              // spacing: 15,
              children: [
                Wrap(
                  direction: Axis.vertical,
                  spacing: 5,
                  children: [
                    Text(
                      context
                          .l10n.personal_profile_contact_info_group_item_email,
                      style: LGTextStyle.p3.gray_70,
                    ),
                    Text(
                      state.profile!.email,
                      style: LGTextStyle.p1.secondary_100,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: const EdgeInsets.all(15),
            foregroundColor: LGColors.black,
            backgroundColor: LGColors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ChangePhoneNumberScreen(),
              ),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                direction: Axis.vertical,
                spacing: 5,
                children: [
                  Text(
                    context
                        .l10n.personal_profile_contact_info_group_item_phone_no,
                    style: LGTextStyle.p3.gray_70,
                  ),
                  Text(
                    formatPhoneNumber(state.profile!.phone_number),
                    style: LGTextStyle.p1.secondary_100,
                  ),
                ],
              ),
              const FaIcon(
                FontAwesomeIcons.angleRight,
                size: 16,
              )
            ],
          ),
        )
      ],
    );
  }
}
