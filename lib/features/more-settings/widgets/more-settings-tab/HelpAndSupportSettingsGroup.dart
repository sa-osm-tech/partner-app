import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logerex_partner/features/more-settings/widgets/more-settings-tab/SettingsButton.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';

class HelpAndSupportSettingsGroup extends StatelessWidget {
  const HelpAndSupportSettingsGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.more_settings_help_and_support_group_title,
            style: LGTextStyle.subheading1.black,
          ),
          const SizedBox(height: 12),
          SettingsButton(
            icon: const FaIcon(
              FontAwesomeIcons.circleQuestion,
              size: 20,
            ),
            label: context
                .l10n.more_settings_help_and_support_group_item_help_center,
            onPressed: null,
          ),
          SettingsButton(
            icon: const FaIcon(
              FontAwesomeIcons.message,
              size: 20,
            ),
            label: context
                .l10n.more_settings_help_and_support_group_item_contact_logerex,
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
