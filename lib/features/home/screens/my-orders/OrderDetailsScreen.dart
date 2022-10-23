import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';
import 'package:logerex_partner/common_widgets/LGRedbutton.dart';
import 'package:logerex_partner/features/home/widgets/my-orders/OrderDetailsCard.dart';
import 'package:logerex_partner/features/home/widgets/my-orders/OrderDetailsDriverCardSection.dart';
import 'package:logerex_partner/features/home/widgets/my-orders/OrderDetailsHeaderSection.dart';

class OrderDetailsScreen extends HookConsumerWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: LGAppbar(title: 'Order Details'),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, bottom: 50, left: 15, right: 15),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const OrderDetailsHeaderSection(),
                const SizedBox(height: 20),
                const OrderDetailsDriverCardSection(),
                const SizedBox(height: 20),
                const Expanded(
                  child: OrderDetailsCard(),
                ),
                const SizedBox(height: 50),
                LGRedButton(
                  text: 'Start Job',
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}