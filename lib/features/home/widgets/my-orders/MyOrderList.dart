import 'package:flutter/material.dart';
import 'package:logerex_partner/features/home/widgets/my-orders/MyOrderCard.dart';

class MyOrderList extends StatelessWidget {
  const MyOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.center,
        runSpacing: 4,
        children: [
          const MyOrderCard(),
          const MyOrderCard(),
          const MyOrderCard(),
        ],
      ),
    );
  }
}
