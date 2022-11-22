import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGBanner.dart';
import 'package:logerex_partner/features/home/widgets/HomeOptionButtonsList.dart';
import 'package:logerex_partner/features/home/widgets/UserHeaderInfo.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';

class HomeTab extends HookConsumerWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 50, left: 18, right: 18, bottom: 20),
          child: UserHeaderInfo(),
        ),
        LGBanner(bannerText: context.l10n.home_tab_banner_text),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
          child: HomeOptionButtonList(),
        )
      ],
    );
  }
}
