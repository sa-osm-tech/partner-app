import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class LGAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String title;
  final VoidCallback? onPressBackButton;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;

  LGAppbar({
    super.key,
    required this.title,
    this.actions,
    this.bottom,
    this.onPressBackButton,
  }) : preferredSize = bottom == null
            ? const Size.fromHeight(60.0)
            : const Size.fromHeight(110);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const FaIcon(
          FontAwesomeIcons.arrowLeft,
          size: 18,
        ),
        onPressed: onPressBackButton ??
            () {
              Navigator.of(context).pop();
            },
      ),
      title: Text(
        title,
      ),
      bottom: bottom,
      titleTextStyle: LGTextStyle.h4.black,
      centerTitle: true,
      actions: actions,
      backgroundColor: LGColors.white,
      foregroundColor: LGColors.black,
    );
  }
}
