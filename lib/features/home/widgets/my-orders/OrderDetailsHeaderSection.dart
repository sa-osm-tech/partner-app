import 'package:flutter/material.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class OrderDetailsHeaderSection extends StatelessWidget {
  const OrderDetailsHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'โอสถกรีฑา จำกัด',
          style: LGTextStyle.h2.black,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              'Status: ',
              style: LGTextStyle.h5.black,
            ),
            const SizedBox(width: 10),
            Text(
              'Not Started',
              style: LGTextStyle.p1.gray_50,
            ),
          ],
        )
      ],
    );
  }
}
