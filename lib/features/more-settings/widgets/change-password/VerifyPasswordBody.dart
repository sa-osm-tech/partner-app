import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/PasswordTextField.dart';
import 'package:logerex_partner/features/more-settings/states/change-password/ChangePasswordState.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';

class VerifyPasswordBody extends HookConsumerWidget {
  final TextEditingController verifyPasswordTextController;
  const VerifyPasswordBody(this.verifyPasswordTextController, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passwordUpdate = useValueListenable(verifyPasswordTextController);

    final stateNotifier =
        ref.watch(changePasswordStateNotifierProvider.notifier);

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (passwordUpdate.text.isEmpty) {
            stateNotifier.setNextActionButtonEnable(false);
          } else {
            stateNotifier.setNextActionButtonEnable(true);
          }
        });

        return null;
      },
      [passwordUpdate],
    );

    return Wrap(
      runSpacing: 24,
      children: [
        Text(
          context.l10n.change_password_verify_label,
          style: LGTextStyle.p3.gray_70,
        ),
        PasswordTextField(
          passwordTextController: verifyPasswordTextController,
        ),
        RichText(
          text: TextSpan(
            text: context.l10n.change_password_password_forgot_password,
            style: LGTextStyle.subheading1.action_100,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print('Forgot password at change password screen');
              },
          ),
        )
      ],
    );
  }
}
