import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/home/states/my-orders/MyOrderState.dart';
import 'package:logerex_partner/features/home/widgets/my-orders/MyOrderList.dart';

class FinishedScreen extends HookConsumerWidget {
  const FinishedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(myOrderStateNotifierProvider);
    // if (state.successOrders.isEmpty) {
    //   return const EmptyDisplay(
    //     detail: 'Hmm... Looks like there are no orders here.',
    //     suggestionDetail: 'Try updating / accepting some orders',
    //   );
    // } else {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 15, bottom: 70, left: 15),
      child: SingleChildScrollView(
        child: Wrap(
          runSpacing: 20,
          children: const [
            MyOrderList(type: 'Success'),
          ],
        ),
      ),
    );
    // }
  }
}
