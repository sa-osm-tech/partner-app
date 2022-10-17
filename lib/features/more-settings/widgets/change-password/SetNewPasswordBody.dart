import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/PasswordTextField.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';
import 'package:logerex_partner/utils/http/LGHttp.dart';

class SetNewPasswordBody extends HookConsumerWidget {
  const SetNewPasswordBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isButtonDisabled = useState(true);
    final newPasswordTextController = useTextEditingController();
    final newPasswordUpdate = useValueListenable(newPasswordTextController);

    final confirmPasswordTextController = useTextEditingController();
    final confirmPasswordUpdate = useValueListenable(
      confirmPasswordTextController,
    );

    useEffect(
      () {
        if (newPasswordUpdate.text.isEmpty ||
            confirmPasswordUpdate.text.isEmpty) {
          isButtonDisabled.value = true;
        } else {
          isButtonDisabled.value = false;
        }
        return null;
      },
      [newPasswordUpdate, confirmPasswordUpdate],
    );

    return Column(
      children: [
        Wrap(
          runSpacing: 24,
          children: [
            Text(
              context.l10n.change_password_strong_password_recommend,
              style: LGTextStyle.p3.gray_70,
            ),
            PasswordTextField(
              passwordTextController: newPasswordTextController,
              hintText: context.l10n.change_password_new_password_hint_text,
            ),
            PasswordTextField(
              passwordTextController: confirmPasswordTextController,
              hintText: context.l10n.change_password_confirm_password_hint_text,
            ),
          ],
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                backgroundColor: LGColors.primary_100,
                foregroundColor: LGColors.white,
                disabledBackgroundColor: LGColors.gray_10,
                disabledForegroundColor: LGColors.gray_50,
                animationDuration: const Duration(seconds: 0),
                textStyle: LGTextStyle.subheading1.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: (isButtonDisabled.value)
                  ? null
                  : () async {
                      if (newPasswordTextController.text !=
                          confirmPasswordTextController.text) {
                        print('password not match');
                        return;
                      }
                      final newUserPassword = newPasswordTextController.text;
                      final isSuccess =
                          await LGHttp().resetUserPassword(newUserPassword);
                      if (!isSuccess) {
                        print('cannot reset user password');
                        return;
                      }
                      Navigator.of(context).pop();
                    },
              child: Text(context.l10n.change_password_button_change_password),
            ),
          ),
        )
      ],
    );
  }
}
