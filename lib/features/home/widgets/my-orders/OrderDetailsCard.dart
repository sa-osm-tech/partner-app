import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class OrderDetailsCard extends StatelessWidget {
  const OrderDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    Widget orderInfo(Widget icon, String details) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 16,
            height: 16,
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
                    'L4-023959-001',
                    style: LGTextStyle.p3.secondary_50,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Navigate to google maps');
                    },
                    child: Row(
                      children: [
                        Text('Google Map', style: LGTextStyle.p3.action_100),
                        const SizedBox(
                          width: 5,
                        ),
                        const FaIcon(
                          FontAwesomeIcons.upRightFromSquare,
                          size: 16,
                          color: LGColors.action_100,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'รถเทรลเลอร์พื้นเรียบ',
                style: LGTextStyle.subheading1.black,
              ),
              const SizedBox(height: 15),
              Wrap(
                runSpacing: 12,
                children: [
                  orderInfo(
                    const FaIcon(
                      FontAwesomeIcons.sackDollar,
                      size: 16,
                      color: LGColors.primary_100,
                    ),
                    '50,000 Baht',
                  ),
                  orderInfo(
                    const FaIcon(
                      FontAwesomeIcons.weightHanging,
                      size: 16,
                      color: LGColors.primary_100,
                    ),
                    '500 kg',
                  ),
                  orderInfo(
                    const FaIcon(
                      FontAwesomeIcons.phone,
                      size: 16,
                      color: LGColors.primary_100,
                    ),
                    '(+66) 95-555-5555',
                  ),
                  orderInfo(
                    const FaIcon(
                      FontAwesomeIcons.solidClock,
                      size: 16,
                      color: LGColors.primary_100,
                    ),
                    '2 Oct 2022 12:00',
                  ),
                  orderInfo(
                    const FaIcon(
                      FontAwesomeIcons.locationDot,
                      size: 16,
                      color: LGColors.primary_100,
                    ),
                    'From:\nซอย หม่อมแผ้ว 3 แขวง สามเสนใน เขตพญาไท กรุงเทพมหานคร 10400',
                  ),
                  orderInfo(
                    const FaIcon(
                      FontAwesomeIcons.locationDot,
                      size: 16,
                      color: LGColors.primary_100,
                    ),
                    'To:\nหมู่ที่ 8 123 ถนน ศรีนครินทร์ ตำบล บางเมือง อำเภอเมืองสมุทรปราการ สมุทรปราการ 10270',
                  ),
                  orderInfo(
                    const FaIcon(
                      FontAwesomeIcons.box,
                      size: 16,
                      color: LGColors.primary_100,
                    ),
                    'Details:\nสินค้าชนิดแห้ง แตกหักได้ยาก เก็บในอุณหภูมิห้อง 20-27 เซลเซียส จำเป็นต้องใช้รถบรรทุกควบคุมอุณหภูมิ สินค้ามีทั้งหมด 5 ลัง แต่ละลังมีขนาด 1m x 1m x 1m',
                  ),
                  orderInfo(
                    const FaIcon(
                      FontAwesomeIcons.box,
                      size: 16,
                      color: LGColors.primary_100,
                    ),
                    'Details:\nสินค้าชนิดแห้ง แตกหักได้ยาก เก็บในอุณหภูมิห้อง 20-27 เซลเซียส จำเป็นต้องใช้รถบรรทุกควบคุมอุณหภูมิ สินค้ามีทั้งหมด 5 ลัง แต่ละลังมีขนาด 1m x 1m x 1m',
                  ),
                  orderInfo(
                    const FaIcon(
                      FontAwesomeIcons.box,
                      size: 16,
                      color: LGColors.primary_100,
                    ),
                    'Details:\nสินค้าชนิดแห้ง แตกหักได้ยาก เก็บในอุณหภูมิห้อง 20-27 เซลเซียส จำเป็นต้องใช้รถบรรทุกควบคุมอุณหภูมิ สินค้ามีทั้งหมด 5 ลัง แต่ละลังมีขนาด 1m x 1m x 1m',
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
