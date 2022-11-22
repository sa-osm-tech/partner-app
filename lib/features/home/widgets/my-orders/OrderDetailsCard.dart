import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class OrderDetailsCard extends StatelessWidget {
  final String orderId;
  final String vehicleType;
  final int price;
  final int weight;
  final String phoneNumber;
  final DateTime startTime;
  final String startAddress;
  final String destinationAddress;
  final String details;
  const OrderDetailsCard({
    super.key,
    required this.orderId,
    required this.vehicleType,
    required this.price,
    required this.weight,
    required this.phoneNumber,
    required this.startTime,
    required this.startAddress,
    required this.destinationAddress,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    Widget orderInfo(Widget icon, String details) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 12,
            height: 12,
            child: icon,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              details,
              style: LGTextStyle.p3.black,
            ),
          )
        ],
      );
    }

    return Card(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order ID:',
                    style: LGTextStyle.p3.secondary_50,
                  ),
                  Text(
                    orderId,
                    style: LGTextStyle.p3.secondary_50,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                vehicleType,
                style: LGTextStyle.subheading1.black,
              ),
              const SizedBox(height: 15),
              Wrap(
                runSpacing: 12,
                children: [
                  orderInfo(
                    const FaIcon(
                      FontAwesomeIcons.sackDollar,
                      size: 12,
                      color: LGColors.primary_100,
                    ),
                    '$price Baht',
                  ),
                  orderInfo(
                    const FaIcon(
                      FontAwesomeIcons.weightHanging,
                      size: 12,
                      color: LGColors.primary_100,
                    ),
                    '$weight kg',
                  ),
                  orderInfo(
                    const FaIcon(
                      FontAwesomeIcons.phone,
                      size: 12,
                      color: LGColors.primary_100,
                    ),
                    '(+66) ${phoneNumber.substring(1)}',
                  ),
                  orderInfo(
                    const FaIcon(
                      FontAwesomeIcons.solidClock,
                      size: 12,
                      color: LGColors.primary_100,
                    ),
                    DateFormat('dd/MM/yyyy HH:mm', 'th')
                        .format(startTime)
                        .toString(),
                  ),
                  orderInfo(
                    const FaIcon(
                      FontAwesomeIcons.locationDot,
                      size: 12,
                      color: LGColors.primary_100,
                    ),
                    'From:\n$startAddress',
                  ),
                  orderInfo(
                    const FaIcon(
                      FontAwesomeIcons.locationDot,
                      size: 12,
                      color: LGColors.primary_100,
                    ),
                    'To:\n$destinationAddress',
                  ),
                  orderInfo(
                    const FaIcon(
                      FontAwesomeIcons.box,
                      size: 12,
                      color: LGColors.primary_100,
                    ),
                    'Details:\n$details',
                  ),
                ],
              ),
            ],
          ),
        )
        // ],
        // ),
        ,
      ),
    );
  }
}
