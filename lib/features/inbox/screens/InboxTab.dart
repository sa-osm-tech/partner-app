import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/inbox/screens/InboxScreen.dart';
import 'package:logerex_partner/features/inbox/states/InboxState.dart';
import 'package:logerex_partner/features/inbox/widgets/InboxAppBar.dart';
import 'package:logerex_partner/features/inbox/widgets/NotificationCard.dart';
import 'package:logerex_partner/features/more-settings/states/personal-profile/PersonalProfileState.dart';
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
    final stateNotifier = ref.watch(inboxStateNotifierProvider.notifier);
    final state = ref.watch(inboxStateNotifierProvider);
    final personalProfileStateNotifier =
        ref.watch(personalProfileStateNotifierProvider.notifier);
    final personalProfileState =
        ref.watch(personalProfileStateNotifierProvider);
    useEffect(
      () {
        stateNotifier.setNotifications(
          personalProfileState.profile!.id!,
          personalProfileState.profile!.role!,
        );
        return null;
      },
      [],
    );
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
            InboxScreen(
              children: state.notifications
                  .map(
                    (e) => NotificationCard(
                      title: e.event_name,
                      body: e.order_id,
                      isRead: e.is_read,
                      type: e.event_name,
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
