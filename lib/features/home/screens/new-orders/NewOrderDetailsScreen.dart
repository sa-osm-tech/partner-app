import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';
import 'package:logerex_partner/common_widgets/LGRedbutton.dart';
import 'package:logerex_partner/features/home/models/new-order/OrderModel.dart';
import 'package:logerex_partner/features/home/screens/new-orders/DriverAssignmentScreen.dart';
import 'package:logerex_partner/features/home/widgets/new-orders/NewOrderDetailsCard.dart';
import 'package:logerex_partner/features/home/widgets/new-orders/NewOrderDetailsHeaderSection.dart';

class NewOrderDetailsScreen extends HookConsumerWidget {
  final OrderModel newOrder;
  const NewOrderDetailsScreen({
    super.key,
    required this.newOrder,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: LGAppbar(title: 'New Order Details'),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 55,
        ),
        child: Column(
          children: [
            NewOrderDetailsHeaderSection(
              customerName: newOrder.customer_name,
              orderId: newOrder.id!,
              price: newOrder.price,
              startProvince: newOrder.start_province,
              destinationProvince: newOrder.destination_province,
              vehicleType: newOrder.vehicle_type,
              startTime: newOrder.start_time!,
              weight: newOrder.weight,
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/mock-customer.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const AspectRatio(
                aspectRatio: 360 / 150,
              ),
            ),
            Expanded(
              child: NewOrderDetailsCard(
                customerPhoneNumber: newOrder.phone_number,
                startAddress: newOrder.start_address,
                destinationAddress: newOrder.destination_address,
                details: newOrder.details,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: LGRedButton(
                text: 'Accept This Order',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DriverAssignmentScreen(
                        toBeAssignedOrder: newOrder,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
