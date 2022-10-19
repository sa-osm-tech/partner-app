import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';

class UserHeaderInfo extends HookConsumerWidget {
  const UserHeaderInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${context.l10n.home_tab_hello_title}, yooooyyooooy',
          style: LGTextStyle.h2.black,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'yooooyyooooy',
          style: LGTextStyle.subheading1.secondary_50,
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: LGColors.primary_50,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 4,
              children: [
                const FaIcon(
                  FontAwesomeIcons.wallet,
                  size: 12,
                  color: LGColors.highlight_100,
                ),
                Text('฿ 0', style: LGTextStyle.subheading1.highlight_100)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
