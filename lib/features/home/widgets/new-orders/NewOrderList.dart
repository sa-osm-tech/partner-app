import 'package:flutter/material.dart';
import 'package:logerex_partner/features/home/widgets/new-orders/NewOrderCard.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class NewOrderList extends StatelessWidget {
  const NewOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('0~50 km', style: LGTextStyle.h3.black),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                NewOrderCard(),
                NewOrderCard(),
                NewOrderCard(),
                NewOrderCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
