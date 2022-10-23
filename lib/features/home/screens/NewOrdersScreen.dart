import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';
import 'package:logerex_partner/features/home/widgets/new-orders/NewOrderList.dart';

class NewOrdersScreen extends HookConsumerWidget {
  const NewOrdersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: LGAppbar(title: 'New Orders'),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          right: 0,
          left: 15,
          bottom: 67,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              NewOrderList(),
              NewOrderList(),
              NewOrderList(),
              NewOrderList(),
              NewOrderList(),
            ],
          ),
        ),
      ),
    );
  }
}
