import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class OrderDetailsDriverCardSection extends StatelessWidget {
  const OrderDetailsDriverCardSection({super.key});

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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.solidCircle,
                            size: 6,
                            color: LGColors.primary_100,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'Available',
                            style: LGTextStyle.subheading1.primary_100,
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),
                      Text(
                        'Makkins Li',
                        style: LGTextStyle.p3.black,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'makkins@gmail.com',
                        style: LGTextStyle.p3.secondary_50,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '(+66) 85-555-5555',
                        style: LGTextStyle.p3.secondary_50,
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
