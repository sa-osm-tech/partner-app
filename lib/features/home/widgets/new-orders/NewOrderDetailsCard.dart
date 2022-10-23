import 'package:flutter/material.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class NewOrderDetailsCard extends StatelessWidget {
  const NewOrderDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    Widget orderInfo(String label, String details) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 57,
            child: Text(
              label,
              style: LGTextStyle.subheading2.secondary_50,
            ),
          ),
          Expanded(
            child: Text(
              details,
              style: LGTextStyle.p3.black,
            ),
          )
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Wrap(
        runSpacing: 15,
        children: [
          orderInfo('Phone', '(+66) 95-555-5555'),
          orderInfo(
            'From',
            'ซอย หม่อมแผ้ว 3 แขวง สามเสนใน เขตพญาไท กรุงเทพมหานคร 10400',
          ),
          orderInfo(
            'To',
            'หมู่ที่ 8 123 ถนน ศรีนครินทร์ ตำบล บางเมือง อำเภอเมืองสมุทรปราการ สมุทรปราการ 10270',
          ),
          orderInfo(
            'Details',
            'สินค้าชนิดแห้ง แตกหักได้ยาก เก็บในอุณหภูมิห้อง 20-27 เซลเซียส จำเป็นต้องใช้รถบรรทุกควบคุมอุณหภูมิ สินค้ามีทั้งหมด 5 ลัง แต่ละลังมีขนาด 1m x 1m x 1m',
          ),
        ],
      ),
    );
  }
}
