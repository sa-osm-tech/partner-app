import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:logerex_partner/features/home/models/new-order/OrderModel.dart';
import 'package:logerex_partner/features/home/screens/new-orders/NewOrderDetailsScreen.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class NewOrderCard extends StatelessWidget {
  final OrderModel newOrder;
  const NewOrderCard({super.key, required this.newOrder});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewOrderDetailsScreen(newOrder: newOrder),
            ),
          );
        },
        child: SizedBox(
          width: 140,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                      child: Image.asset(
                        'assets/images/mock-customer.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 2,
                    right: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: LGColors.primary_100,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 3,
                          horizontal: 6,
                        ),
                        child: Text(
                          '${newOrder.price} ฿',
                          style: LGTextStyle.p4.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      newOrder.customer_name,
                      style: LGTextStyle.subheading2.black,
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 8,
                          height: 8,
                          child: FaIcon(
                            FontAwesomeIcons.mapPin,
                            size: 8,
                            color: LGColors.gray_50,
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          'BKK-SPK',
                          style: LGTextStyle.p5.secondary_50,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text('|', style: LGTextStyle.p5.secondary_50),
                        const SizedBox(
                          width: 3,
                        ),
                        const FaIcon(
                          FontAwesomeIcons.truck,
                          size: 8,
                          color: LGColors.gray_50,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Expanded(
                          child: Text(
                            newOrder.vehicle_type,
                            style: LGTextStyle.p5.secondary_50,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 8,
                          height: 8,
                          child: FaIcon(
                            FontAwesomeIcons.solidClock,
                            size: 8,
                            color: LGColors.gray_50,
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          DateFormat('dd/MM/yyyy HH:mm', 'th')
                              .format(newOrder.start_time!)
                              .toString(),
                          style: LGTextStyle.p5.secondary_50,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text('|', style: LGTextStyle.p5.secondary_50),
                        const SizedBox(
                          width: 3,
                        ),
                        const FaIcon(
                          FontAwesomeIcons.weightHanging,
                          size: 8,
                          color: LGColors.gray_50,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Expanded(
                          child: Text(
                            '${newOrder.weight} kg',
                            style: LGTextStyle.p5.secondary_50,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
