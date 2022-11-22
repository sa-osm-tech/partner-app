import 'package:flutter/material.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class InboxAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final PreferredSizeWidget? bottom;
  final VoidCallback onTapReadAll;

  InboxAppbar({
    super.key,
    this.bottom,
    VoidCallback? onTapReadAll,
  })  : preferredSize = bottom == null
            ? const Size.fromHeight(60.0)
            : const Size.fromHeight(110),
        onTapReadAll = onTapReadAll ?? (() {});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Inbox',
              textAlign: TextAlign.left,
              style: LGTextStyle.h4.black,
            ),
          ],
        ),
      ),
      centerTitle: false,
      bottom: bottom,
      backgroundColor: LGColors.white,
      foregroundColor: LGColors.black,
    );
  }
}
