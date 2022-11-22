import 'package:flutter/material.dart';
import 'package:logerex_partner/themes/LGColors.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColorLight: LGColors.primary_100,
  textSelectionTheme:
      const TextSelectionThemeData(cursorColor: LGColors.gray_50),
  inputDecorationTheme: const InputDecorationTheme(
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: LGColors.primary_100),
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(color: LGColors.gray_50),
    ),
  ),
  fontFamily: 'Montserrat',
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: LGColors.primary_100,
);
