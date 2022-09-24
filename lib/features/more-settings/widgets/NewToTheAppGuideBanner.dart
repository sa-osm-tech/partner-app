import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';

class NewToTheAppGuideBanner extends StatelessWidget {
  const NewToTheAppGuideBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: LGColors.cream,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          children: [
            const Icon(
              CarbonIcons.user_profile,
              size: 35,
              color: LGColors.notice_100,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                context.l10n.more_settings_notice,
                style: LGTextStyle.p3.notice_100,
              ),
            ),
            const SizedBox(width: 20),
            IconButton(
              padding: const EdgeInsets.all(0),
              constraints: const BoxConstraints(),
              splashRadius: 8,
              icon: const FaIcon(
                FontAwesomeIcons.circleArrowRight,
                color: LGColors.notice_100,
              ),
              iconSize: 16,
              onPressed: () {
                print('Navigate to quick guide');
              },
            )
          ],
        ),
      ),
    );
  }
}
