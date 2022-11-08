import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';
import 'package:logerex_partner/features/home/widgets/employees-mgmt/NewEmployeeForm.dart';

class AddNewEmployeeScreen extends HookConsumerWidget {
  const AddNewEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: LGAppbar(title: 'Add New Employee'),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          left: 15,
          right: 15,
          bottom: 55,
        ),
        child: NewEmployeeForm(),
      ),
    );
  }
}
