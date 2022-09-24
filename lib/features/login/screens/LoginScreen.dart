import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/constants/LGEnums.dart';
import 'package:logerex_partner/features/login/states/LoginState.dart';
import 'package:logerex_partner/features/login/widgets/ForgotPasswordModal.dart';
import 'package:logerex_partner/features/login/widgets/LoginHeader.dart';
import 'package:logerex_partner/features/login/widgets/LoginModal.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final stateNotifier = ref.watch(loginStateNotifierProvider.notifier);
    final state = ref.watch(loginStateNotifierProvider);

    Widget switchModal() {
      switch (state.loginState) {
        case LOGIN_STATE.DEFAULT:
          return const LoginModal();
        case LOGIN_STATE.FORGOT_PWD:
          return const ForgotPasswordModal();
        case LOGIN_STATE.RESET_PWD:
          return const ForgotPasswordModal();
        default:
          return const LoginModal();
      }
    }

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            const LoginHeader(),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Center(
                child: switchModal(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
