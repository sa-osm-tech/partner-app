import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';
import 'package:logerex_partner/features/home/models/employee-mgmt/EmployeeModel.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class EmployeeInfoScreen extends HookConsumerWidget {
  final EmployeeModel employee;
  const EmployeeInfoScreen({
    super.key,
    required this.employee,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget driverInfo(String label, String details) {
      return Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 50,
            child: Text(
              label,
              style: LGTextStyle.subheading2.secondary_50,
            ),
          ),
          const SizedBox(width: 25),
          Expanded(
            child: Text(
              details,
              style: LGTextStyle.p3.black,
            ),
          )
        ],
      );
    }

    return Scaffold(
      appBar: LGAppbar(
        title: 'Employee Management',
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          left: 18,
          right: 18,
          bottom: 55,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              child: SizedBox(
                height: 150,
                width: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/mock-driver.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Wrap(
              runSpacing: 15,
              children: [
                driverInfo(
                  'Name',
                  '${employee.first_name} ${employee.last_name}',
                ),
                driverInfo(
                  'Email',
                  employee.email,
                ),
                driverInfo(
                  'Phone',
                  '(+66) ${employee.phone_number.substring(1)}',
                ),
                driverInfo(
                  'Role',
                  employee.role == 0 ? 'Owner' : 'Driver',
                ),
                driverInfo(
                  'Created',
                  DateFormat('dd/MM/yyyy HH:mm', 'th')
                      .format(employee.create_at!)
                      .toString(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
