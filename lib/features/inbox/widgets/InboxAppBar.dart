import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class InboxAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final int notiNum;
  final PreferredSizeWidget? bottom;
  final VoidCallback onTapReadAll;

  InboxAppbar({
    super.key,
    this.notiNum = 0,
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
            const SizedBox(width: 15),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: LGColors.primary_100,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    notiNum.toString(),
                    textAlign: TextAlign.center,
                    style: LGTextStyle.p3.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      centerTitle: false,
      bottom: bottom,
      actions: <Widget>[
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: RichText(
                text: TextSpan(
                  text: 'Read all',
                  style: notiNum > 0
                      ? LGTextStyle.h4.action_100
                      : LGTextStyle.h4.secondary_50,
                  recognizer: TapGestureRecognizer()
                    ..onTap = notiNum > 0
                        ? () {
                            onTapReadAll();
                          }
                        : null,
                ),
              ),
            ),
          ],
        )
      ],
      backgroundColor: LGColors.white,
      foregroundColor: LGColors.black,
    );
  }
}
