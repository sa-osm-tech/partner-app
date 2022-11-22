import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/home/states/new-orders/NewOrderState.dart';
import 'package:logerex_partner/features/home/widgets/new-orders/NewOrderCard.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class NewOrderList extends HookConsumerWidget {
  const NewOrderList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(newOrderStateNotifierProvider);
    final stateNotifier = ref.watch(newOrderStateNotifierProvider.notifier);
    useEffect(
      () {
        stateNotifier.setNewOrders();
        return null;
      },
      [],
    );
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: state.newOrders != null
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('0~50 km', style: LGTextStyle.h3.black),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...state.newOrders!
                          .map(
                            (e) => NewOrderCard(newOrder: e),
                          )
                          .toList(),
                    ],
                  ),
                ),
              ],
            )
          : null,
    );
  }
}
