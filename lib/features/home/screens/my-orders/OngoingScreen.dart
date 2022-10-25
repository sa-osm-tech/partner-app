import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/home/widgets/EmptyDisplay.dart';

class OngoingScreen extends HookConsumerWidget {
  const OngoingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const EmptyDisplay(
      detail: 'Hmm... Looks like there are no orders here.',
      suggestionDetail: 'Try updating / accepting some orders',
    );
  }
}
