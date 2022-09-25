import 'package:flutter/material.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';

class OthersSection extends StatelessWidget {
  const OthersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: Text(
            context.l10n.personal_profile_others_group_title,
            style: LGTextStyle.subheading2.black,
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: const EdgeInsets.all(15),
            foregroundColor: LGColors.highlight_100,
            backgroundColor: LGColors.white,
            textStyle: LGTextStyle.p3.highlight_100,
          ),
          onPressed: () {},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.l10n.personal_profile_others_group_item_delete_account,
              )
            ],
          ),
        )
      ],
    );
  }
}
