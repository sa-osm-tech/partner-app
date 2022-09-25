import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';

class SubmitUpdateRequestButton extends StatelessWidget {
  const SubmitUpdateRequestButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        side: const BorderSide(color: LGColors.primary_100, width: 1),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        foregroundColor: LGColors.primary_100,
        textStyle: LGTextStyle.subheading2.primary_100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        fixedSize: const Size.fromWidth(237),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FaIcon(
            FontAwesomeIcons.message,
            size: 16,
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            context.l10n.personal_profile_submit_update_request,
          )
        ],
      ),
    );
  }
}
