import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';
import 'package:logerex_partner/features/home/screens/employees-mgmt/AddNewEmployeeScreen.dart';
import 'package:logerex_partner/features/home/widgets/employees-mgmt/EmployeesList.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class EmployeesScreen extends HookConsumerWidget {
  const EmployeesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: LGAppbar(
        title: 'Employee Management',
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: RichText(
                  text: TextSpan(
                    text: 'Add',
                    style: LGTextStyle.h4.primary_100,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddNewEmployeeScreen(),
                          ),
                        );
                      },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      // body: const EmptyDisplay(
      //   detail: 'Looks like you currently have no employees.',
      //   suggestionDetail: 'Try adding one.',
      // ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 15,
          right: 15,
          bottom: 55,
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Wrap(
                  children: const [
                    EmployeesList(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
