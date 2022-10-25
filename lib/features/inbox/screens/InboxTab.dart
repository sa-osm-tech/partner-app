import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/inbox/screens/InboxAccountScreen.dart';
import 'package:logerex_partner/features/inbox/screens/InboxOrderScreen.dart';
import 'package:logerex_partner/features/inbox/widgets/InboxAppBar.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class InboxTab extends HookConsumerWidget {
  const InboxTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: InboxAppbar(
          notiNum: 5,
          bottom: TabBar(
            indicatorColor: LGColors.black,
            labelStyle: LGTextStyle.h5.black,
            labelColor: LGColors.black,
            tabs: const [
              Tab(
                text: 'Order',
              ),
              Tab(
                text: 'Account',
              ),
            ],
          ),
          onTapReadAll: () {
            debugPrint('Read all');
          },
        ),
        body: const TabBarView(
          children: [
            InboxOrderScreen(),
            InboxAccountScreen(),
          ],
        ),
      ),
    );
  }
}
