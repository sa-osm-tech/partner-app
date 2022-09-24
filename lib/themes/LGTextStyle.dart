import 'package:flutter/material.dart';
import 'package:logerex_partner/themes/LGColors.dart';

class LGTextStyle {
  const LGTextStyle._();

  static LGTextColor get h2 => const LGTextColor(
        TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          fontFamily: 'Montserrat',
        ),
      );

  static LGTextColor get subheading1 => const LGTextColor(
        TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: 'Montserrat',
        ),
      );

  static LGTextColor get p1 => const LGTextColor(
        TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'Montserrat',
        ),
      );

  static LGTextColor get p3 => const LGTextColor(
        TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          fontFamily: 'Montserrat',
        ),
      );
}

class LGTextColor {
  final TextStyle style;

  const LGTextColor(this.style);

  TextStyle get black => style.copyWith(color: LGColors.black);

  TextStyle get white => style.copyWith(color: LGColors.white);

  TextStyle get gray_50 => style.copyWith(color: LGColors.gray_50);

  TextStyle get gray_70 => style.copyWith(color: LGColors.gray_70);

  TextStyle get highlight_100 => style.copyWith(color: LGColors.highlight_100);

  TextStyle get notice_100 => style.copyWith(color: LGColors.notice_100);
}
