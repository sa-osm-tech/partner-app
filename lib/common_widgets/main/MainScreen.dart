import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/home/screens/HomeScreen.dart';
import 'package:logerex_partner/features/notification/screens/NotificationScreen.dart';
import 'package:logerex_partner/features/order_pool/screens/OrderPoolScreen.dart';
import 'package:logerex_partner/features/orders/screens/OrdersScreen.dart';
import 'package:logerex_partner/features/profile/screens/ProfileScreen.dart';

class MainScreen extends HookConsumerWidget {
  final int selectedTab = 0;

  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabsList = useMemoized(
      () => [
        const HomeScreen(),
        const NotificationScreen(),
        const OrderPoolScreen(),
        const OrdersScreen(),
        const ProfileScreen(),
      ],
    );
    return Scaffold(
      body: IndexedStack(
        index: 0,
        children: tabsList,
      ),
      // bottomNavigationBar
    );
  }
}
