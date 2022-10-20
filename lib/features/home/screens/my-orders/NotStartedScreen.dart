import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/home/widgets/my-orders/MyOrderCard.dart';

class NotStartedScreen extends HookConsumerWidget {
  const NotStartedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // return const NoOrderDisplay();
    return const Center(child: MyOrderCard());
  }
}
