import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InboxScreen extends HookConsumerWidget {
  final List<Widget> children;

  const InboxScreen({
    super.key,
    this.children = const <Widget>[],
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // return const EmptyDisplay();
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 0, bottom: 0, left: 0),
      child: SingleChildScrollView(
        child: Wrap(
          runSpacing: 0,
          children: children,
        ),
      ),
    );
  }
}
