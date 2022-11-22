import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/home/widgets/my-orders/MyOrderList.dart';

class OngoingScreen extends HookConsumerWidget {
  const OngoingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // return const EmptyDisplay(
    //   detail: 'Hmm... Looks like there are no orders here.',
    //   suggestionDetail: 'Try updating / accepting some orders',
    // );
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 15, bottom: 70, left: 15),
      child: SingleChildScrollView(
        child: Wrap(
          runSpacing: 20,
          children: const [
            MyOrderList(type: "On Going"),
          ],
        ),
      ),
    );
  }
}
