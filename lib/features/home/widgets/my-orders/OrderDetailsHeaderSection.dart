import 'package:flutter/material.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class OrderDetailsHeaderSection extends StatelessWidget {
  final String customerName;
  final String status;

  const OrderDetailsHeaderSection({
    super.key,
    required this.customerName,
    required this.status,
  });

  String switchStatus() {
    switch (status) {
      case 'notstarted':
        return 'Not Started';
      case 'ongoing':
        return 'On-Going';
      case 'success':
        return 'Finished';
      default:
        return '-';
    }
  }

  TextStyle switchStatusTextStyle() {
    switch (status) {
      case 'notstarted':
        return LGTextStyle.p1.black;
      case 'ongoing':
        return LGTextStyle.p1.neutral_100;
      case 'success':
        return LGTextStyle.p1.positive_100;
      default:
        return LGTextStyle.p1.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          customerName,
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
              switchStatus(),
              style: switchStatusTextStyle(),
            ),
          ],
        )
      ],
    );
  }
}
