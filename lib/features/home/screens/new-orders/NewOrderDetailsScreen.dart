import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';
import 'package:logerex_partner/common_widgets/LGRedbutton.dart';
import 'package:logerex_partner/features/home/widgets/new-orders/NewOrderDetailsCard.dart';
import 'package:logerex_partner/features/home/widgets/new-orders/NewOrderDetailsHeaderSection.dart';

class NewOrderDetailsScreen extends HookConsumerWidget {
  const NewOrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: LGAppbar(title: 'New Order Details'),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 55,
        ),
        child: Column(
          children: [
            const NewOrderDetailsHeaderSection(),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/mock-customer.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const AspectRatio(
                aspectRatio: 360 / 150,
              ),
            ),
            const Expanded(
              child: NewOrderDetailsCard(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: LGRedButton(
                text: 'Accept This Order',
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
