import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/login/widgets/LoginHeader.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  PageRoute<void> asRoute() {
    return MaterialPageRoute(
      builder: (context) => this,
      settings: const RouteSettings(
        name: '/login',
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                child: Container(
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
                  width: double.infinity,
                  height: 375,
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
                              style: LGTextStyle.p1.black,
                              decoration: InputDecoration(
                                hintStyle: LGTextStyle.p1.gray_50,
                                hintText: context.l10n.login_username_hint_text,
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextField(
                              obscureText: true,
                              style: LGTextStyle.p1.black,
                              decoration: InputDecoration(
                                hintStyle: LGTextStyle.p1.gray_50,
                                hintText: context.l10n.login_password_hint_text,
                                suffixIcon: const Align(
                                  alignment: Alignment.centerRight,
                                  widthFactor: 1,
                                  heightFactor: 1,
                                  child: FaIcon(
                                    FontAwesomeIcons.eyeSlash,
                                    size: 16,
                                    color: LGColors.gray_70,
                                  ),
                                ),
                              ),
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
                                textStyle: LGTextStyle.subheading1.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                minimumSize: const Size(double.infinity, 50),
                              ),
                              onPressed: () {},
                              child: Text(context.l10n.login_sign_in_button),
                            ),
                            const SizedBox(height: 20),
                            RichText(
                              text: TextSpan(
                                text: context.l10n.login_forgot_password,
                                style: LGTextStyle.p3.black,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print('I forgot my password');
                                  },
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
