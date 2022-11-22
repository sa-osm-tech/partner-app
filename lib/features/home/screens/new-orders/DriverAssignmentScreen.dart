import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGActionAlertDialog.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';
import 'package:logerex_partner/common_widgets/LGRedbutton.dart';
import 'package:logerex_partner/common_widgets/main/screens/MainScreen.dart';
import 'package:logerex_partner/features/home/models/new-order/OrderModel.dart';
import 'package:logerex_partner/features/home/states/new-orders/NewOrderState.dart';
import 'package:logerex_partner/features/home/widgets/new-orders/NewOrderDriverList.dart';
import 'package:logerex_partner/utils/http/LGHttp.dart';

class DriverAssignmentScreen extends HookConsumerWidget {
  final OrderModel toBeAssignedOrder;
  const DriverAssignmentScreen({
    super.key,
    required this.toBeAssignedOrder,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateNotifier = ref.watch(newOrderStateNotifierProvider.notifier);
    final state = ref.watch(newOrderStateNotifierProvider);

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
                    NewOrderDriverList(
                      driverRole: 'Owner',
                    ),
                    NewOrderDriverList(
                      driverRole: 'Drivers',
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LGRedButton(
              text: 'Confirm Order',
              onPressed: state.toBeAssignedDriver != null
                  ? () async {
                      print(toBeAssignedOrder);
                      print(state.toBeAssignedDriver);

                      showDialog(
                        context: context,
                        builder: (BuildContext context) => LGActionAlertDialog(
                          title: 'Confirm Order?',
                          content:
                              'By confirming the order,\nyou cannot delete it afterwards.',
                          onConfirm: () async {
                            if (state.toBeAssignedDriver!.role == 0) {
                              // owner
                              await LGHttp().assignOrder(
                                toBeAssignedOrder.id!,
                                state.toBeAssignedDriver!.first_name,
                                state.toBeAssignedDriver!.id!,
                                state.toBeAssignedDriver!.last_name,
                                state.toBeAssignedDriver!.id!,
                              );
                            } else {
                              // driver
                              await LGHttp().assignOrder(
                                toBeAssignedOrder.id!,
                                state.toBeAssignedDriver!.first_name,
                                state.toBeAssignedDriver!.id!,
                                state.toBeAssignedDriver!.last_name,
                                state.toBeAssignedDriver!.owner_id,
                              );
                            }
                            stateNotifier.resetToBeAssignedDriver();
                            Navigator.of(context).pop();
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => const MainScreen(),
                              ),
                              (Route<dynamic> route) => false,
                            );
                          },
                        ),
                      );
                    }
                  : null,
            )
          ],
        ),
      ),
    );
  }
}
