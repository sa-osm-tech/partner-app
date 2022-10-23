import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logerex_partner/features/home/screens/my-orders/OrderDetailsScreen.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class MyOrderCard extends StatelessWidget {
  const MyOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OrderDetailsScreen(),
            ),
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.85,
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
                            'This client has a very long name that it cannot fits',
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
                            '50,000 ฿',
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
                            'Bangkok - Samutprakan with a long text behind it',
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
                            'Bangkok - Samutprakan with a long text behind it',
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
                              '02/10/2022 12:00',
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
                              '500 kg',
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
