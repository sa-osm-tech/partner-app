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
  static LGTextColor get h3 => const LGTextColor(
        TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          fontFamily: 'Montserrat',
        ),
      );

  static LGTextColor get h4 => const LGTextColor(
        TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          fontFamily: 'Montserrat',
        ),
      );
  static LGTextColor get h5 => const LGTextColor(
        TextStyle(
          fontSize: 14,
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

  static LGTextColor get subheading2 => const LGTextColor(
        TextStyle(
          fontSize: 12,
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
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: 'Montserrat',
        ),
      );
  static LGTextColor get p4 => const LGTextColor(
        TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          fontFamily: 'Montserrat',
        ),
      );
  static LGTextColor get p5 => const LGTextColor(
        TextStyle(
          fontSize: 8,
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

  TextStyle get gray_30 => style.copyWith(color: LGColors.gray_30);

  TextStyle get gray_50 => style.copyWith(color: LGColors.gray_50);

  TextStyle get gray_70 => style.copyWith(color: LGColors.gray_70);

  TextStyle get highlight_100 => style.copyWith(color: LGColors.highlight_100);

  TextStyle get notice_100 => style.copyWith(color: LGColors.notice_100);

  TextStyle get primary_100 => style.copyWith(color: LGColors.primary_100);

  TextStyle get secondary_100 => style.copyWith(color: LGColors.secondary_100);

  TextStyle get secondary_50 => style.copyWith(color: LGColors.secondary_50);

  TextStyle get action_100 => style.copyWith(color: LGColors.action_100);

  TextStyle get neutral_100 => style.copyWith(color: LGColors.neutral_100);

  TextStyle get positive_100 => style.copyWith(color: LGColors.positive_100);
}
