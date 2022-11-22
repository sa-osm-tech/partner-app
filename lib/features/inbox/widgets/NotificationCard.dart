import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logerex_partner/Icons/NotificationIcons.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class NotificationCard extends StatelessWidget {
  static const double iconSize = 40;
  static Widget unreadCircle = Container(
    width: 12,
    height: 12,
    decoration: const BoxDecoration(
      color: LGColors.positive_100,
      borderRadius: BorderRadius.all(
        Radius.circular(500),
      ),
    ),
  );

  final String title;
  final String body;
  final String type;
  late Widget icon;
  bool isRead;

  NotificationCard({
    super.key,
    required this.title,
    required this.body,
    required this.type, // new_order_assigned, new_order_accepted, order_success
    this.isRead = false,
  }) {
    switch (type) {
      case 'new_order_assigned':
        icon = const Icon(
          NotificationIcons.truckCircle,
          size: iconSize,
          color: LGColors.primary_100,
        );
        break;
      case 'new_order_accepted':
        icon = const Icon(
          NotificationIcons.truckCircle,
          size: iconSize,
          color: LGColors.primary_100,
        );
        break;
      case 'order_success':
        icon = const Icon(
          NotificationIcons.truckCircle,
          size: iconSize,
          color: LGColors.primary_100,
        );
        break;
      default:
        icon = const FaIcon(
          FontAwesomeIcons.question,
          size: iconSize,
          color: LGColors.gray_70,
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    String switchTitle() {
      switch (title) {
        case 'new_order_assigned':
          return 'New Order Assigned';
        case 'new_order_accepted':
          return 'New Order Accepted';
        case 'order_success':
          return 'Order Successful';
        default:
          return '-';
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: iconSize,
                height: iconSize,
                child: Stack(
                  children: [
                    Center(child: icon),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      switchTitle(),
                      style: isRead
                          ? LGTextStyle.p1.gray_70
                          : LGTextStyle.subheading1.black,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Order Id: $body',
                      style: LGTextStyle.p3.gray_50,
                    ),
                  ],
                ),
              ),
            ),
            const FaIcon(
              FontAwesomeIcons.angleRight,
              size: 20,
              color: LGColors.gray_50,
            ),
          ],
        ),
      ),
    );
  }
}
