import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/inbox/screens/InboxScreen.dart';
import 'package:logerex_partner/features/inbox/widgets/InboxAppBar.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class Notification {
  final String title;
  final String body;
  final String type;
  final bool isRead;

  const Notification({
    required this.title,
    required this.body,
    required this.type,
    required this.isRead,
  });
}

class InboxTab extends HookConsumerWidget {
  final List<Notification> accountNotification;

  // int get unreadNotiNum {
  //   return orderNotification.where((e) => !e.isRead).length +
  //       accountNotification.where((e) => !e.isRead).length;
  // }

  const InboxTab({
    super.key,
    this.accountNotification = const <Notification>[],
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: InboxAppbar(
          // notiNum: unreadNotiNum,
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
        body: TabBarView(
          children: [
            const InboxScreen(type: 'Order'),
            InboxScreen(type: 'Account'),
          ],
        ),
      ),
    );
  }
}
