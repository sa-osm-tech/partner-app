import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/more-settings/widgets/NewToTheAppGuideBanner.dart';

class MoreSettingsTab extends HookConsumerWidget {
  const MoreSettingsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [NewToTheAppGuideBanner()],
        ),
      ),
    );
  }
}
