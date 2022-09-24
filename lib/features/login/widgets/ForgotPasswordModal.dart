import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/constants/LGEnums.dart';
import 'package:logerex_partner/features/login/states/LoginState.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';

class ForgotPasswordModal extends HookConsumerWidget {
  const ForgotPasswordModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isButtonDisabled = useState(true);

    final stateNotifier = ref.watch(loginStateNotifierProvider.notifier);

    final emailTextController = useTextEditingController();
    final emailUpdate = useValueListenable(emailTextController);

    useEffect(
      () {
        if (emailUpdate.text.isEmpty) {
          isButtonDisabled.value = true;
        } else {
          isButtonDisabled.value = false;
        }
        return null;
      },
      [emailUpdate],
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: LGColors.white,
        boxShadow: const [
          BoxShadow(
            color: LGColors.dropshadow,
            blurRadius: 10,
            offset: Offset(0, 5), // Shadow position
          ),
        ],
      ),
      width: 310,
      // height: 375,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 40,
          children: [
            Text(
              context.l10n.login_forgot_password_title,
              style: LGTextStyle.h2.black, // fontSize:
            ),
            TextField(
              controller: emailTextController,
              style: LGTextStyle.p1.black,
              decoration: InputDecoration(
                hintStyle: LGTextStyle.p1.gray_50,
                hintText: context.l10n.login_forgot_password_email,
              ),
            ),
            Column(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    backgroundColor: LGColors.primary_100,
                    foregroundColor: LGColors.white,
                    disabledBackgroundColor: LGColors.gray_10,
                    disabledForegroundColor: LGColors.gray_70,
                    animationDuration: const Duration(seconds: 0),
                    textStyle: LGTextStyle.subheading1.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  onPressed: (isButtonDisabled.value)
                      ? null
                      : () {
                          print('email: ${emailTextController.text}');
                        },
                  child: Text(context.l10n.login_forgot_password_sent_req),
                ),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: context.l10n.login_forgot_password_back,
                    style: LGTextStyle.p3.black,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        stateNotifier.setLoginState(LOGIN_STATE.DEFAULT);
                      },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
