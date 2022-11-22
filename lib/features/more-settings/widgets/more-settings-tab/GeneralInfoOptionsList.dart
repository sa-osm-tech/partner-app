import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logerex_partner/features/more-settings/widgets/more-settings-tab/GeneralInfoOptionButton.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';

class GeneralInfoOptionsList extends StatelessWidget {
  const GeneralInfoOptionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: GeneralInfoOptionButton(
              icon: const FaIcon(
                FontAwesomeIcons.clock,
                size: 30,
              ),
              label: context.l10n.more_settings_business_hours_option,
              onPressed: null
              // () {
              //   print('Navigate to business hour page');
              // },
              ,
            ),
          ),
          Expanded(
            child: GeneralInfoOptionButton(
              icon: const FaIcon(
                FontAwesomeIcons.addressBook,
                size: 30,
              ),
              label: context.l10n.more_settings_base_contact_option,
              onPressed: null
              // () {
              //   print('Navigate to base contact page');
              // },
              ,
            ),
          ),
          Expanded(
            child: GeneralInfoOptionButton(
              icon: const FaIcon(
                FontAwesomeIcons.locationDot,
                size: 30,
              ),
              label: context.l10n.more_settings_base_address_option,
              onPressed: null
              // () {
              //   print('Navigate to base address page');
              // },
              ,
            ),
          ),
        ],
      ),
    );
  }
}
