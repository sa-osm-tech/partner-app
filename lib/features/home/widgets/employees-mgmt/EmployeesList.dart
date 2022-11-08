import 'package:flutter/material.dart';
import 'package:logerex_partner/features/home/widgets/employees-mgmt/EmployeesDriverCard.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class EmployeesList extends StatelessWidget {
  const EmployeesList({super.key});

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
              'Driver',
              style: LGTextStyle.h4.black,
            ),
          ),
          const EmployeesDriverCard(),
        ],
      ),
    );
  }
}
