import 'package:flutter/material.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class NewOrderDetailsCard extends StatelessWidget {
  final String customerPhoneNumber;
  final String startAddress;
  final String destinationAddress;
  final String details;
  const NewOrderDetailsCard({
    super.key,
    required this.customerPhoneNumber,
    required this.startAddress,
    required this.destinationAddress,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    Widget orderInfo(String label, String details) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 57,
            child: Text(
              label,
              style: LGTextStyle.subheading2.secondary_50,
            ),
          ),
          Expanded(
            child: Text(
              details,
              style: LGTextStyle.p3.black,
            ),
          )
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Wrap(
        runSpacing: 15,
        children: [
          orderInfo('Phone', '(+66) ${customerPhoneNumber.substring(1)}'),
          orderInfo(
            'From',
            startAddress,
          ),
          orderInfo(
            'To',
            destinationAddress,
          ),
          orderInfo(
            'Details',
            details,
          ),
        ],
      ),
    );
  }
}
