import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logerex_partner/features/home/screens/EmployeesScreen.dart';
import 'package:logerex_partner/features/home/screens/MyOrdersScreen.dart';
import 'package:logerex_partner/features/home/screens/NewOrdersScreen.dart';
import 'package:logerex_partner/features/home/widgets/HomeOptionButton.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';

class HomeOptionButtonList extends StatelessWidget {
  const HomeOptionButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: HomeOptionButton(
              label: context.l10n.home_tab_my_orders_button,
              icon: const FaIcon(
                FontAwesomeIcons.truck,
                size: 20,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyOrdersScreen(),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: HomeOptionButton(
              label: context.l10n.home_tab_new_orders_button,
              icon: const FaIcon(
                FontAwesomeIcons.fileImport,
                size: 20,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NewOrdersScreen(),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: HomeOptionButton(
              label: context.l10n.home_tab_employees_button,
              icon: const FaIcon(
                FontAwesomeIcons.users,
                size: 20,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmployeesScreen(),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: HomeOptionButton(
              label: context.l10n.home_tab_feedback_button,
              icon: const FaIcon(
                FontAwesomeIcons.solidComments,
                size: 20,
              ),
              onPressed: null,
            ),
          ),
        ],
      ),
    );
  }
}
