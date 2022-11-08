import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';

class EmployeeInfoScreen extends HookConsumerWidget {
  const EmployeeInfoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: LGAppbar(
        title: 'Employee Management',
      ),
      body: Text(
        'Employee Info Screen',
      ),
    );
  }
}
