import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGActionAlertDialog.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';
import 'package:logerex_partner/common_widgets/LGRedbutton.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class EmployeeInfoScreen extends HookConsumerWidget {
  const EmployeeInfoScreen({super.key});

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
                driverInfo('Name', 'Maj.Gen.Kolachai Suwannaboon'),
                driverInfo('Email', 'pleumlovedad@gmail.com'),
                driverInfo('Phone', '(+66) 85-555-5555'),
                driverInfo('Role', 'Driver'),
                driverInfo('Created', '04 Oct 2022'),
              ],
            ),
            const Spacer(),
            LGRedButton(
              text: 'Delete',
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => LGActionAlertDialog(
                    isDestructiveAction: true,
                    title: 'Delete this employee?',
                    content: 'This employee\'s data will be lost forever!',
                    onConfirm: () {
                      print('do something');
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
