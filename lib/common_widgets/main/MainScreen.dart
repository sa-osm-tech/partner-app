import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/main/MainState.dart';
import 'package:logerex_partner/features/home/screens/HomeScreen.dart';
import 'package:logerex_partner/features/notification/screens/NotificationScreen.dart';
import 'package:logerex_partner/features/order_pool/screens/OrderPoolScreen.dart';
import 'package:logerex_partner/features/orders/screens/OrdersScreen.dart';
import 'package:logerex_partner/features/profile/screens/ProfileScreen.dart';

class MainScreen extends HookConsumerWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateNotifier = ref.watch(mainStateNotifierProvider.notifier);
    final state = ref.watch(mainStateNotifierProvider);

    final tabsList = useMemoized(
      () => [
        const HomeScreen(),
        const NotificationScreen(),
        const OrderPoolScreen(),
        const OrdersScreen(),
        const ProfileScreen(),
      ],
    );

    useEffect(
      () {
        return null;
      },
      [],
    );

    return Scaffold(
        body: IndexedStack(
          index: state.selectedTabIdx,
          children: tabsList,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Order Pool',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'My Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ],
          currentIndex: state.selectedTabIdx,
          selectedItemColor: const Color.fromARGB(255, 255, 85, 13),
          unselectedItemColor: const Color(0xff6F7C90),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          onTap: ((idx) {
            stateNotifier.setSelectedTab(idx);
          }),
        ));
  }
}
