import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/inbox/states/InboxState.dart';
import 'package:logerex_partner/features/more-settings/states/personal-profile/PersonalProfileState.dart';
import 'package:logerex_partner/themes/LGColors.dart';

class InboxScreen extends HookConsumerWidget {
  final List<Widget> children;

  const InboxScreen({
    super.key,
    this.children = const <Widget>[],
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // return const EmptyDisplay();
    final stateNotifier = ref.watch(inboxStateNotifierProvider.notifier);
    final state = ref.watch(inboxStateNotifierProvider);
    final personalProfileStateNotifier =
        ref.watch(personalProfileStateNotifierProvider.notifier);
    final personalProfileState =
        ref.watch(personalProfileStateNotifierProvider);
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 0, bottom: 0, left: 0),
      child: RefreshIndicator(
        color: LGColors.primary_100,
        onRefresh: () async {
          stateNotifier.setNotifications(
            personalProfileState.profile!.id!,
            personalProfileState.profile!.role!,
          );
        },
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Wrap(
                  children: children,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
