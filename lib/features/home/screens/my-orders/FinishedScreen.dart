import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/home/widgets/EmptyDisplay.dart';

class FinishedScreen extends HookConsumerWidget {
  const FinishedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const EmptyDisplay(
      detail: 'Hmm... Looks like there are no orders here.',
      suggestionDetail: 'Try updading / accepting some orders',
    );
  }
}
