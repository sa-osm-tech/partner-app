import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';

class NewOrdersScreen extends HookConsumerWidget {
  const NewOrdersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: LGAppbar(title: 'New Orders'),
      body: Center(
        child: Text('New Orders Screen'),
      ),
    );
  }
}