import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:logerex_partner/features/home/models/new-order/OrderModel.dart';
import 'package:logerex_partner/features/home/screens/my-orders/OrderDetailsScreen.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class MyOrderCard extends StatelessWidget {
  final OrderModel order;
  const MyOrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OrderDetailsScreen(
                order: order,
              ),
            ),
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/mock-customer.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/mock-driver.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            order.customer_name,
                            style: LGTextStyle.h5.secondary_100,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            color: LGColors.primary_100,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            '${order.price} ฿',
                            style: LGTextStyle.p3.white,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                          height: 10,
                          child: FaIcon(
                            FontAwesomeIcons.mapPin,
                            size: 10,
                            color: LGColors.gray_50,
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: Text(
                            '${order.start_province} - ${order.destination_province}',
                            style: LGTextStyle.p4.gray_50,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                          height: 10,
                          child: FaIcon(
                            FontAwesomeIcons.truck,
                            size: 10,
                            color: LGColors.gray_50,
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: Text(
                            order.vehicle_type,
                            style: LGTextStyle.p4.gray_50,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                              height: 10,
                              child: FaIcon(
                                FontAwesomeIcons.solidClock,
                                size: 10,
                                color: LGColors.gray_50,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            // Expanded(
                            Text(
                              DateFormat('dd/MM/yyyy HH:mm', 'th')
                                  .format(order.start_time!)
                                  .toString(),
                              style: LGTextStyle.p4.gray_50,
                              overflow: TextOverflow.ellipsis,
                            ),
                            // ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                              height: 10,
                              child: FaIcon(
                                FontAwesomeIcons.weightHanging,
                                size: 10,
                                color: LGColors.gray_50,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            // Expanded(
                            Text(
                              '${order.weight} kg',
                              style: LGTextStyle.p4.gray_50,
                              overflow: TextOverflow.ellipsis,
                            ),
                            // ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
