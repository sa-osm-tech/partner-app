import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logerex_partner/features/home/models/employee-mgmt/EmployeeModel.dart';
import 'package:logerex_partner/features/home/screens/employees-mgmt/EmployeeInfoScreen.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class EmployeesDriverCard extends StatelessWidget {
  final EmployeeModel employee;
  const EmployeesDriverCard({
    super.key,
    required this.employee,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EmployeeInfoScreen(employee: employee),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width * 0.85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/mock-driver.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.solidCircle,
                              size: 6,
                              color: LGColors.primary_100,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Available',
                              style: LGTextStyle.subheading1.primary_100,
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        Text(
                          '${employee.first_name} ${employee.last_name}',
                          style: LGTextStyle.p3.black,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          employee.email,
                          style: LGTextStyle.p3.secondary_50,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '(+66) ${employee.phone_number.substring(1)}',
                          style: LGTextStyle.p3.secondary_50,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
