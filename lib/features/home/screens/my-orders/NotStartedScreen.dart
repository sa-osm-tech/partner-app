import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotStartedScreen extends HookConsumerWidget {
  const NotStartedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Text('Not Started Screen'),
    );
  }
}
