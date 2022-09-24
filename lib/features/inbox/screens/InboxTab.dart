import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InboxTab extends HookConsumerWidget {
  const InboxTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Center(
      child: Text('Inbox Tab'),
    );
  }
}
