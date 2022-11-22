import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/home/states/my-orders/MyOrderState.dart';
import 'package:logerex_partner/features/home/widgets/my-orders/MyOrderCard.dart';
import 'package:logerex_partner/features/more-settings/states/personal-profile/PersonalProfileState.dart';

class MyOrderList extends HookConsumerWidget {
  final String type;
  const MyOrderList({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateNotifier = ref.watch(myOrderStateNotifierProvider.notifier);
    final state = ref.watch(myOrderStateNotifierProvider);
    final personalProfileStateNotifier =
        ref.watch(personalProfileStateNotifierProvider.notifier);
    final personalProfileState =
        ref.watch(personalProfileStateNotifierProvider);
    useEffect(
      () {
        switch (type) {
          case 'Not Started':
            print('not started');
            stateNotifier.setNotStartedOrders(
              personalProfileState.profile!.id!,
              personalProfileState.profile!.role!,
            );
            break;
          case 'On Going':
            print('on going');
            stateNotifier.setOngoingOrders(
              personalProfileState.profile!.id!,
              personalProfileState.profile!.role!,
            );
            break;
          case 'Success':
            print('success');
            stateNotifier.setSuccesssOrders(
              personalProfileState.profile!.id!,
              personalProfileState.profile!.role!,
            );
            break;
        }
        return null;
      },
      [],
    );

    List<Widget> switchOrderCard() {
      switch (type) {
        case 'Not Started':
          return state.notStartedOrders
              .map(
                (e) => MyOrderCard(order: e),
              )
              .toList();
        case 'On Going':
          return state.onGoingOrders
              .map(
                (e) => MyOrderCard(order: e),
              )
              .toList();
        case 'Success':
          return state.successOrders
              .map(
                (e) => MyOrderCard(order: e),
              )
              .toList();
        default:
          return [];
      }
    }

    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.center,
        runSpacing: 4,
        children: switchOrderCard(),
      ),
    );
  }
}
