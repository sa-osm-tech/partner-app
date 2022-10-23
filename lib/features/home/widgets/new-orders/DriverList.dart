import 'package:flutter/material.dart';
import 'package:logerex_partner/features/home/widgets/new-orders/NewOrderDriverCard.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class DriverList extends StatelessWidget {
  final String driverRole;
  const DriverList({super.key, required this.driverRole});

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
              driverRole,
              style: LGTextStyle.h4.black,
            ),
          ),
          if (driverRole == 'Owner') ...[
            const NewOrderDriverCard(),
          ] else ...[
            const NewOrderDriverCard(),
            const NewOrderDriverCard(),
            const NewOrderDriverCard(),
            const NewOrderDriverCard(),
            const NewOrderDriverCard(),
            const NewOrderDriverCard(),
          ]
        ],
      ),
    );
  }
}
