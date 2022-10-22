import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/home/widgets/my-orders/MyOrderList.dart';

class NotStartedScreen extends HookConsumerWidget {
  const NotStartedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // return const NoOrderDisplay();
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 15, bottom: 70, left: 15),
      child: SingleChildScrollView(
        child: Wrap(
          runSpacing: 20,
          children: const [
            MyOrderList(),
            MyOrderList(),
            MyOrderList(),
          ],
        ),
      ),
    );
  }
}
