import 'package:flutter/material.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class EmptyDisplay extends StatelessWidget {
  final String detail;
  final String suggestionDetail;
  const EmptyDisplay({
    super.key,
    required this.detail,
    required this.suggestionDetail,
  });

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
            detail,
            style: LGTextStyle.p3.gray_50,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            suggestionDetail,
            style: LGTextStyle.p3.action_100,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
