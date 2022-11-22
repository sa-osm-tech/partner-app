import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class NewOrderDetailsHeaderSection extends StatelessWidget {
  final String customerName;
  final String orderId;
  final int price;
  final String startProvince;
  final String destinationProvince;
  final String vehicleType;
  final DateTime startTime;
  final int weight;

  const NewOrderDetailsHeaderSection({
    super.key,
    required this.customerName,
    required this.orderId,
    required this.price,
    required this.startProvince,
    required this.destinationProvince,
    required this.vehicleType,
    required this.startTime,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    Widget orderInfo(Widget icon, String details) {
      return Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: icon,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              details,
              style: LGTextStyle.p3.gray_50,
            ),
          )
        ],
      );
    }

    Widget orderInfoMinWidth(Widget icon, String details) {
      return Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: icon,
          ),
          const SizedBox(width: 12),
          Text(
            details,
            style: LGTextStyle.p3.gray_50,
          )
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
        bottom: 20,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      customerName,
                      style: LGTextStyle.h2.black,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      orderId,
                      style: LGTextStyle.p4.secondary_50,
                    )
                  ],
                ),
              ),
              const SizedBox(width: 5),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: LGColors.primary_100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('$price ฿', style: LGTextStyle.p1.white),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            runSpacing: 5,
            children: [
              orderInfo(
                const FaIcon(
                  FontAwesomeIcons.mapPin,
                  size: 20,
                  color: LGColors.gray_50,
                ),
                '$startProvince - $destinationProvince',
              ),
              orderInfo(
                const FaIcon(
                  FontAwesomeIcons.truck,
                  size: 20,
                  color: LGColors.gray_50,
                ),
                vehicleType,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  orderInfoMinWidth(
                    const FaIcon(
                      FontAwesomeIcons.solidClock,
                      size: 20,
                      color: LGColors.gray_50,
                    ),
                    DateFormat('dd/MM/yyyy HH:mm', 'th')
                        .format(startTime)
                        .toString(),
                  ),
                  orderInfoMinWidth(
                    const FaIcon(
                      FontAwesomeIcons.weightHanging,
                      size: 20,
                      color: LGColors.gray_50,
                    ),
                    '$weight kg',
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
