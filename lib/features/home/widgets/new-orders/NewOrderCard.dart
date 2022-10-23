import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class NewOrderCard extends StatelessWidget {
  const NewOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          width: 140,
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'โอสถกรีฑา จำกัด',
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
                            'รถเทรลเลอร์พื้นเรียบ',
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
                          '02/10/2022 12:00',
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
                            '500 kg',
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
