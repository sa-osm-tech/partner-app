import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';

class EmployeesScreen extends HookConsumerWidget {
  const EmployeesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: LGAppbar(title: 'Employee Management'),
      body: Center(
        child: Text('Employee Management Screen'),
      ),
    );
  }
}
