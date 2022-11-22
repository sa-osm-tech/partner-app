import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGActionAlertDialog.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';
import 'package:logerex_partner/common_widgets/LGRedbutton.dart';
import 'package:logerex_partner/features/home/models/new-order/OrderModel.dart';
import 'package:logerex_partner/features/home/states/my-orders/MyOrderState.dart';
import 'package:logerex_partner/features/home/widgets/my-orders/OrderDetailsCard.dart';
import 'package:logerex_partner/features/home/widgets/my-orders/OrderDetailsDriverCardSection.dart';
import 'package:logerex_partner/features/home/widgets/my-orders/OrderDetailsHeaderSection.dart';
import 'package:logerex_partner/features/more-settings/states/personal-profile/PersonalProfileState.dart';
import 'package:logerex_partner/utils/http/LGHttp.dart';

class OrderDetailsScreen extends HookConsumerWidget {
  final OrderModel order;
  const OrderDetailsScreen({super.key, required this.order});

  String switchActionText() {
    switch (order.status) {
      case 'notstarted':
        return 'Start Job';
      case 'ongoing':
        return 'Finish Job';
      default:
        return '-';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateNotifier = ref.watch(myOrderStateNotifierProvider.notifier);
    final state = ref.watch(myOrderStateNotifierProvider);
    final personalProfileStateNotifier =
        ref.watch(personalProfileStateNotifierProvider.notifier);
    final personalProfileState =
        ref.watch(personalProfileStateNotifierProvider);
    return Scaffold(
      appBar: LGAppbar(title: 'Order Details'),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, bottom: 50, left: 15, right: 15),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OrderDetailsHeaderSection(
                  customerName: order.customer_name,
                  status: order.status,
                ),
                const SizedBox(height: 20),
                OrderDetailsDriverCardSection(
                  driverFirstName: order.shipment!.driver_first_name,
                  driverLastName: order.shipment!.driver_last_name,
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: OrderDetailsCard(
                    orderId: order.id!,
                    vehicleType: order.vehicle_type,
                    price: order.price,
                    weight: order.weight,
                    phoneNumber: order.phone_number,
                    startTime: order.start_time!,
                    startAddress: order.start_address,
                    destinationAddress: order.destination_address,
                    details: order.details,
                  ),
                ),
                const SizedBox(height: 50),
                if (order.status != 'success') ...[
                  LGRedButton(
                    text: switchActionText(),
                    onPressed: () async {
                      if (order.status == 'notstarted') {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              LGActionAlertDialog(
                            title: 'Start Job?',
                            content:
                                'By starting the order,\nyou cannot undo it afterwards.',
                            onConfirm: () async {
                              await LGHttp()
                                  .updateOrderStatus(order.id!, 'ongoing');
                              stateNotifier.setNotStartedOrders(
                                personalProfileState.profile!.id!,
                                personalProfileState.profile!.role!,
                              );
                              Navigator.of(context).pop();
                              Navigator.of(context).pop();
                            },
                          ),
                        );
                      }
                      if (order.status == 'ongoing') {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              LGActionAlertDialog(
                            title: 'Finish Job?',
                            content:
                                'By finishing the order,\nyou cannot undo it afterwards.',
                            onConfirm: () async {
                              await LGHttp()
                                  .updateOrderStatus(order.id!, 'success');
                              stateNotifier.setOngoingOrders(
                                personalProfileState.profile!.id!,
                                personalProfileState.profile!.role!,
                              );
                              Navigator.of(context).pop();
                              Navigator.of(context).pop();
                            },
                          ),
                        );
                      }
                    },
                  )
                ]
              ],
            ),
          ],
        ),
      ),
    );
  }
}
