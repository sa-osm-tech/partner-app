import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FinishedScreen extends HookConsumerWidget {
  const FinishedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Text('Finished Screen'),
    );
  }
}
