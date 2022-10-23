import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class NewOrderDetailsHeaderSection extends StatelessWidget {
  const NewOrderDetailsHeaderSection({super.key});

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
          Expanded(
            child: Text(
              details,
              style: LGTextStyle.p3.gray_50,
            ),
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
                      'โอสถกรีฑา จำกัด',
                      style: LGTextStyle.h2.black,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'L4-023959-001',
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
                child: Text('50,000 ฿', style: LGTextStyle.p1.white),
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
                'Bangkok - Samutprakan',
              ),
              orderInfo(
                const FaIcon(
                  FontAwesomeIcons.truck,
                  size: 20,
                  color: LGColors.gray_50,
                ),
                'รถเทรลเลอร์พื้นเรียบ',
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
                    '2 Oct 2022 12:00',
                  ),
                  orderInfoMinWidth(
                    const FaIcon(
                      FontAwesomeIcons.weightHanging,
                      size: 20,
                      color: LGColors.gray_50,
                    ),
                    '500 kg',
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
