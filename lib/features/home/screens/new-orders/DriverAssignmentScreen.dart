import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';
import 'package:logerex_partner/common_widgets/LGRedbutton.dart';
import 'package:logerex_partner/features/home/widgets/new-orders/DriverList.dart';

class DriverAssignmentScreen extends HookConsumerWidget {
  const DriverAssignmentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: LGAppbar(title: 'Assign a Driver'),
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
                  runSpacing: 30,
                  children: const [
                    DriverList(
                      driverRole: 'Owner',
                    ),
                    DriverList(
                      driverRole: 'Drivers',
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const LGRedButton(text: 'Confirm Order')
          ],
        ),
      ),
    );
  }
}
