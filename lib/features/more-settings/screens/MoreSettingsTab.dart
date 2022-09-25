import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/more-settings/widgets/more-settings-tab/AccountSettingsGroup.dart';
import 'package:logerex_partner/features/more-settings/widgets/more-settings-tab/GeneralInfoOptionsList.dart';
import 'package:logerex_partner/features/more-settings/widgets/more-settings-tab/HelpAndSupportSettingsGroup.dart';
import 'package:logerex_partner/features/more-settings/widgets/more-settings-tab/NewToTheAppGuideBanner.dart';

class MoreSettingsTab extends HookConsumerWidget {
  const MoreSettingsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(
        children: [
          const NewToTheAppGuideBanner(),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
            child: Column(
              children: const [
                GeneralInfoOptionsList(),
                SizedBox(
                  height: 15,
                ),
                HelpAndSupportSettingsGroup(),
                SizedBox(
                  height: 30,
                ),
                AccountSettingsGroup(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
