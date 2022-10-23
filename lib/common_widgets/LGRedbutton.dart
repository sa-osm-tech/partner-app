import 'package:flutter/material.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class LGRedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  const LGRedButton({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: const EdgeInsets.all(16.0),
        backgroundColor: LGColors.primary_100,
        foregroundColor: LGColors.white,
        disabledBackgroundColor: LGColors.gray_10,
        disabledForegroundColor: LGColors.gray_50,
        animationDuration: const Duration(seconds: 0),
        textStyle: LGTextStyle.subheading1.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        minimumSize: const Size.fromHeight(50),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
