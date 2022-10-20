import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';
import 'package:logerex_partner/features/home/screens/my-orders/FinishedScreen.dart';
import 'package:logerex_partner/features/home/screens/my-orders/NotStartedScreen.dart';
import 'package:logerex_partner/features/home/screens/my-orders/OngoingScreen.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class MyOrdersScreen extends HookConsumerWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: LGAppbar(
          title: 'My Orders',
          bottom: TabBar(
            indicatorColor: LGColors.black,
            labelStyle: LGTextStyle.h5.black,
            labelColor: LGColors.black,
            tabs: const [
              Tab(
                text: 'Not Started',
              ),
              Tab(
                text: 'On-going',
              ),
              Tab(
                text: 'Finished',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            NotStartedScreen(),
            OngoingScreen(),
            FinishedScreen(),
          ],
        ),
      ),
    );
  }
}
