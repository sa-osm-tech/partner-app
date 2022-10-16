import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/PasswordTextField.dart';
import 'package:logerex_partner/common_widgets/main/screens/MainScreen.dart';
import 'package:logerex_partner/constants/LGEnums.dart';
import 'package:logerex_partner/features/login/states/LoginState.dart';
import 'package:logerex_partner/features/more-settings/states/personal-profile/PersonalProfileState.dart';
import 'package:logerex_partner/preferences/UserPreferences.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';
import 'package:logerex_partner/utils/http/LGHttp.dart';

class LoginModal extends HookConsumerWidget {
  const LoginModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isButtonDisabled = useState(true);

    final stateNotifier = ref.watch(loginStateNotifierProvider.notifier);

    final usernameTextController = useTextEditingController();
    final usernameUpdate = useValueListenable(usernameTextController);
    final passwordTextController = useTextEditingController();
    final passwordUpdate = useValueListenable(passwordTextController);

    final personalProfileStateNotifier =
        ref.watch(personalProfileStateNotifierProvider.notifier);

    useEffect(
      () {
        if (usernameUpdate.text.isEmpty || passwordUpdate.text.isEmpty) {
          isButtonDisabled.value = true;
        } else {
          isButtonDisabled.value = false;
        }
        return null;
      },
      [usernameUpdate, passwordUpdate],
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
      // height: 400,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 36,
          children: [
            Text(
              context.l10n.login_sign_in_title,
              style: LGTextStyle.h2.black, // fontSize:
            ),
            Column(
              children: [
                TextField(
                  controller: usernameTextController,
                  style: LGTextStyle.p1.black,
                  decoration: InputDecoration(
                    hintStyle: LGTextStyle.p1.gray_50,
                    hintText: context.l10n.login_username_hint_text,
                  ),
                ),
                const SizedBox(height: 20),
                PasswordTextField(
                  passwordTextController: passwordTextController,
                ),
              ],
            ),
            Column(
              children: [
                TextButton(
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
                          await LGHttp().login(
                            usernameTextController.text,
                            passwordTextController.text,
                          );
                          final token = await UserPreferences().getToken();
                          if (token != null) {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => const MainScreen(),
                              ),
                              (Route<dynamic> route) => false,
                            );
                          } else {
                            print('nah');
                          }
                        },
                  child: Text(context.l10n.login_sign_in_button),
                ),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: context.l10n.login_forgot_password,
                    style: LGTextStyle.p3.black,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        stateNotifier.setLoginState(LOGIN_STATE.FORGOT_PWD);
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
