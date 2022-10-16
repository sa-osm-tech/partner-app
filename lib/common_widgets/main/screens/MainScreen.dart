import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/main/states/MainState.dart';
import 'package:logerex_partner/features/home/screens/HomeTab.dart';
import 'package:logerex_partner/features/inbox/screens/InboxTab.dart';
import 'package:logerex_partner/features/more-settings/screens/MoreSettingsTab.dart';
import 'package:logerex_partner/features/payment/screens/PaymentTab.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';

class MainScreen extends HookConsumerWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateNotifier = ref.watch(mainStateNotifierProvider.notifier);
    final state = ref.watch(mainStateNotifierProvider);

    final tabsList = useMemoized(
      () => [
        const HomeTab(),
        const PaymentTab(),
        const InboxTab(),
        const MoreSettingsTab(),
      ],
    );

    useEffect(
      () {},
      [],
    );

    return Scaffold(
      body: IndexedStack(
        index: state.selectedTabIdx,
        children: tabsList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: LGTextStyle.p3.highlight_100,
        unselectedLabelStyle: LGTextStyle.p3.gray_50,
        items: [
          BottomNavigationBarItem(
            icon: const Padding(
              padding: EdgeInsets.all(4.0),
              child: FaIcon(
                FontAwesomeIcons.house,
                size: 24,
              ),
            ),
            label: context.l10n.main_bottom_tabbar_home,
          ),
          BottomNavigationBarItem(
            icon: const Padding(
              padding: EdgeInsets.all(4.0),
              child: FaIcon(
                FontAwesomeIcons.creditCard,
                size: 24,
              ),
            ),
            label: context.l10n.main_bottom_tabbar_payment,
          ),
          BottomNavigationBarItem(
            icon: const Padding(
              padding: EdgeInsets.all(4.0),
              child: FaIcon(
                FontAwesomeIcons.inbox,
                size: 24,
              ),
            ),
            label: context.l10n.main_bottom_tabbar_inbox,
          ),
          BottomNavigationBarItem(
            icon: const Padding(
              padding: EdgeInsets.all(4.0),
              child: FaIcon(
                FontAwesomeIcons.ellipsis,
                size: 24,
              ),
            ),
            label: context.l10n.main_bottom_tabbar_more,
          ),
        ],
        currentIndex: state.selectedTabIdx,
        selectedItemColor: LGColors.highlight_100,
        unselectedItemColor: LGColors.gray_50,
        backgroundColor: LGColors.ternary_100,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: ((idx) {
          stateNotifier.setSelectedTab(idx);
        }),
      ),
    );
  }
}
