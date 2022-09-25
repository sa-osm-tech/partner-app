import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';

class PersonalInfoSection extends StatelessWidget {
  const PersonalInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: Text(
            context.l10n.personal_profile_personal_info_group_title,
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
              spacing: 15,
              children: [
                Wrap(
                  direction: Axis.vertical,
                  spacing: 5,
                  children: [
                    Text(
                      context
                          .l10n.personal_profile_personal_info_group_item_name,
                      style: LGTextStyle.p3.gray_70,
                    ),
                    Text(
                      'OSMTech SA',
                      style: LGTextStyle.p1.secondary_100,
                    ),
                  ],
                ),
                Wrap(
                  direction: Axis.vertical,
                  spacing: 5,
                  children: [
                    Text(
                      context
                          .l10n.personal_profile_personal_info_group_item_email,
                    ),
                    Text(
                      'osmtechsa@gmail.com',
                      style: LGTextStyle.p1.secondary_100,
                    ),
                  ],
                ),
                Wrap(
                  direction: Axis.vertical,
                  spacing: 5,
                  children: [
                    Text(
                      context
                          .l10n.personal_profile_personal_info_group_item_role,
                    ),
                    Text(
                      'Owner',
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
            padding: const EdgeInsets.all(15),
            foregroundColor: LGColors.black,
            backgroundColor: LGColors.white,
            textStyle: LGTextStyle.p1.black,
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.l10n
                    .personal_profile_personal_info_group_item_reset_password,
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
