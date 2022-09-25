import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class LGAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String title;
  final List<Widget>? actions;

  LGAppbar({
    super.key,
    required this.title,
    this.actions,
  }) : preferredSize = const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const FaIcon(
          FontAwesomeIcons.arrowLeft,
          size: 18,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Text(
        title,
      ),
      titleTextStyle: LGTextStyle.h4.black,
      centerTitle: true,
      actions: actions,
      backgroundColor: LGColors.white,
      foregroundColor: LGColors.black,
    );
  }
}
