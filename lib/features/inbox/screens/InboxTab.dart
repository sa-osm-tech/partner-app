import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/inbox/screens/InboxScreen.dart';
import 'package:logerex_partner/features/inbox/widgets/InboxAppBar.dart';
import 'package:logerex_partner/features/inbox/widgets/NotificationCard.dart';
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
  final List<Notification> orderNotification;
  final List<Notification> accountNotification;

  int get unreadNotiNum {
    return orderNotification.where((e) => !e.isRead).length +
        accountNotification.where((e) => !e.isRead).length;
  }

  const InboxTab({
    super.key,
    this.orderNotification = const <Notification>[
      Notification(
        title: 'A new order has been assigned to you',
        body:
            'Order LG-3003 รถเทรลเลอร์พื้นเรียบ\nFrom สมุทรปราการ To เชียงใหม่',
        type: 'new_order_assigned',
        isRead: false,
      ),
      Notification(
        title: 'You have recently accepted order',
        body: 'Order LG-4003 รถกระบะ\nFrom สี่ย่าน To สามย่าน',
        type: 'new_order_accepted',
        isRead: false,
      ),
      Notification(
        title: 'You have recently accepted order',
        body: 'Order LG-4200 รถสิบล้อ\nFrom ห้าย่าน To สองย่าน',
        type: 'new_order_accepted',
        isRead: false,
      ),
      Notification(
        title: 'A new order has been assigned to you',
        body: 'Order LG-3692 รถแทร็กเตอร์\nFrom อยุธยา To นราธิวาส',
        type: 'new_order_assigned',
        isRead: true,
      ),
      Notification(
        title: 'Driver สุชาติ has been successfully delivered order',
        body: 'Order LG-4242 รถกระบะ\nFrom สี่ย่าน To สามย่าน',
        type: 'order_success',
        isRead: false,
      ),
    ],
    this.accountNotification = const <Notification>[],
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: InboxAppbar(
          notiNum: unreadNotiNum,
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
            InboxScreen(
              children: orderNotification
                  .map(
                    (e) => NotificationCard(
                      title: e.title,
                      body: e.body,
                      isRead: e.isRead,
                      type: e.type,
                    ),
                  )
                  .toList(),
            ),
            InboxScreen(
              children: accountNotification
                  .map(
                    (e) => NotificationCard(
                      title: e.title,
                      body: e.body,
                      isRead: e.isRead,
                      type: e.type,
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
