import 'package:flutter/material.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class GeneralInfoOptionButton extends StatelessWidget {
  final Widget icon;
  final String label;
  final VoidCallback onPressed;

  const GeneralInfoOptionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(8.0),
        foregroundColor: LGColors.black,
        textStyle: LGTextStyle.p3.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: onPressed,
      child: Column(
        children: [
          icon,
          const SizedBox(
            height: 4,
          ),
          Text(
            label,
          )
        ],
      ),
    );
  }
}
