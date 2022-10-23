import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';

class NewOrderDetailsScreen extends HookConsumerWidget {
  const NewOrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: LGAppbar(title: 'New Order Details'),
      body: Center(
        child: Text('New Order Screen'),
      ),
    );
  }
}
