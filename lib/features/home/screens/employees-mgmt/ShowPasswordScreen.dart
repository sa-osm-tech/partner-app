import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';
import 'package:logerex_partner/features/home/widgets/employees-mgmt/ShowPasswordSection.dart';

class ShowPasswordScreen extends HookConsumerWidget {
  final String generatedPassword;
  const ShowPasswordScreen({super.key, required this.generatedPassword});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: LGAppbar(
        title: 'Employee Management',
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 55,
        ),
        child: Column(
          children: [
            Expanded(
              child: ShowPasswordSection(
                generatedPassword: generatedPassword,
              ),
            ),
            // LGRedButton(text: 'Close')
          ],
        ),
      ),
    );
  }
}
