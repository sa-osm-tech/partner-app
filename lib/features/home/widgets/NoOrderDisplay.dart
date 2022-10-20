import 'package:flutter/material.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class NoOrderDisplay extends StatelessWidget {
  const NoOrderDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/not-found-pic.png',
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Hmm... Looks like there are no orders here.',
            style: LGTextStyle.p3.gray_50,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Try updading / accepting some orders',
            style: LGTextStyle.p3.action_100,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
