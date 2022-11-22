import 'package:flutter/material.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class OrderDetailsDriverCardSection extends StatelessWidget {
  final String driverFirstName;
  final String driverLastName;

  const OrderDetailsDriverCardSection({
    super.key,
    required this.driverFirstName,
    required this.driverLastName,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Assigned to:', style: LGTextStyle.p3.black),
            const SizedBox(height: 10),
            Row(
              children: [
                SizedBox(
                  height: 80,
                  width: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/mock-driver.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '$driverFirstName $driverLastName',
                        style: LGTextStyle.p3.black,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
