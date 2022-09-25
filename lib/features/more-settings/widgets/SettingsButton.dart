import 'package:flutter/material.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class SettingsButton extends StatelessWidget {
  final Widget icon;
  final String label;
  final VoidCallback onPressed;
  const SettingsButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: const EdgeInsets.all(12),
        foregroundColor: LGColors.black,
        textStyle: LGTextStyle.p3.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: icon,
          ),
          const SizedBox(width: 16),
          Text(
            label,
            style: LGTextStyle.p1.black,
          )
        ],
      ),
    );
  }
}
