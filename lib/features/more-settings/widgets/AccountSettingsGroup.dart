import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logerex_partner/features/more-settings/widgets/RedSettingsButton.dart';
import 'package:logerex_partner/features/more-settings/widgets/SettingsButton.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';

class AccountSettingsGroup extends StatelessWidget {
  const AccountSettingsGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.more_settings_account_group_title,
            style: LGTextStyle.subheading1.black,
          ),
          const SizedBox(height: 12),
          SettingsButton(
            icon: const FaIcon(
              FontAwesomeIcons.circleUser,
              size: 20,
            ),
            label:
                context.l10n.more_settings_account_group_item_personal_profile,
            onPressed: () {},
          ),
          SettingsButton(
            icon: const FaIcon(
              FontAwesomeIcons.buildingColumns,
              size: 20,
            ),
            label: context.l10n.more_settings_account_group_item_bank_account,
            onPressed: null,
          ),
          SettingsButton(
            icon: const FaIcon(
              FontAwesomeIcons.bell,
              size: 20,
            ),
            label: context.l10n.more_settings_account_group_item_notification,
            onPressed: null,
          ),
          SettingsButton(
            icon: const FaIcon(
              FontAwesomeIcons.buildingColumns,
              size: 20,
            ),
            label: context.l10n.more_settings_account_group_item_app_settings,
            onPressed: null,
          ),
          RedSettingsButton(
            icon: const FaIcon(
              FontAwesomeIcons.arrowRightFromBracket,
              size: 20,
            ),
            label: context.l10n.more_settings_account_group_item_sign_out,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
