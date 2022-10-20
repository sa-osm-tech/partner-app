import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OngoingScreen extends HookConsumerWidget {
  const OngoingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Text('On-going Screen'),
    );
  }
}
