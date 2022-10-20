import 'package:flutter/material.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class HomeOptionButton extends StatelessWidget {
  final String label;
  final Widget icon;
  final VoidCallback? onPressed;
  const HomeOptionButton({
    super.key,
    required this.label,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: Colors.transparent,
          child: Ink(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: InkWell(
              onTap: onPressed,
              child: Center(child: icon),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          label,
          style: LGTextStyle.p3.black,
        )
      ],
    );
  }
}
