import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';

class ShowPasswordSection extends StatelessWidget {
  const ShowPasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo-show-password.png',
          ),
          const SizedBox(height: 30),
          Text(
            'Their password:',
            style: LGTextStyle.subheading1.gray_70,
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 280,
            height: 50,
            child: TextFormField(
              // enabled: false,
              style: LGTextStyle.p1.black,
              textAlignVertical: TextAlignVertical.center,
              readOnly: true,
              initialValue: 'nFielA83bVxldO2',
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: LGColors.primary_100,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: LGColors.primary_100,
                  ),
                ),
                suffixIcon: Container(
                  decoration: BoxDecoration(
                    color: LGColors.primary_100,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: IconButton(
                    color: LGColors.white,
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.solidClipboard,
                      // size: 20,
                    ),
                  ),
                ),
                // isCollapsed: true,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            'Send this password to your employee\nto gain access to the account.',
            style: LGTextStyle.p3.gray_30,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
