import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/home/states/employees-mgmt/EmployeeManagementState.dart';
import 'package:logerex_partner/features/home/widgets/employees-mgmt/EmployeesDriverCard.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class EmployeesList extends HookConsumerWidget {
  const EmployeesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(employeeManagementStateNotifierProvider);
    final stateNotifier =
        ref.watch(employeeManagementStateNotifierProvider.notifier);

    useEffect(
      () {
        stateNotifier.setEmployeeList();
        return null;
      },
      [],
    );

    return SizedBox(
      width: double.infinity,
      child: state.employees != null
          ? Wrap(
              alignment: WrapAlignment.center,
              runSpacing: 4,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Drivers',
                    style: LGTextStyle.h4.black,
                  ),
                ),
                ...state.employees!
                    .map(
                      (e) => EmployeesDriverCard(employee: e),
                    )
                    .toList(),
              ],
            )
          : null,
    );
  }
}
