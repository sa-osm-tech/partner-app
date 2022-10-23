import 'package:flutter/material.dart';
import 'package:logerex_partner/features/home/widgets/my-orders/MyOrderCard.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

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
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              '2 Oct 2022',
              style: LGTextStyle.h4.black,
            ),
          ),
          const MyOrderCard(),
          const MyOrderCard(),
          const MyOrderCard(),
        ],
      ),
    );
  }
}
