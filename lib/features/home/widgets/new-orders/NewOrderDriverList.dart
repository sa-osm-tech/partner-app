import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/home/models/employee-mgmt/EmployeeModel.dart';
import 'package:logerex_partner/features/home/states/new-orders/NewOrderState.dart';
import 'package:logerex_partner/features/home/widgets/new-orders/NewOrderDriverCard.dart';
import 'package:logerex_partner/features/more-settings/states/personal-profile/PersonalProfileState.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class NewOrderDriverList extends HookConsumerWidget {
  final String driverRole;
  const NewOrderDriverList({super.key, required this.driverRole});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateNotifier = ref.watch(newOrderStateNotifierProvider.notifier);
    final state = ref.watch(newOrderStateNotifierProvider);

    final personalProfileStateNotifier =
        ref.watch(personalProfileStateNotifierProvider.notifier);
    final personalProfileState =
        ref.watch(personalProfileStateNotifierProvider);

    useEffect(
      () {
        if (driverRole == 'Drivers') {
          stateNotifier.setEmployeeList();
        }
        return null;
      },
      [],
    );

    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.center,
        runSpacing: 4,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              driverRole,
              style: LGTextStyle.h4.black,
            ),
          ),
          if (driverRole == 'Owner') ...[
            NewOrderDriverCard(
              employee: EmployeeModel.fromJson(
                personalProfileState.profile!.toJson(),
              ),
            ),
          ] else if (state.employees != null)
            ...state.employees!
                .map(
                  (e) => NewOrderDriverCard(employee: e),
                )
                .toList(),
        ],
      ),
    );
  }
}
