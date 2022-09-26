import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logerex_partner/themes/LGColors.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';

class PasswordTextField extends HookWidget {
  final TextEditingController passwordTextController;

  const PasswordTextField({
    super.key,
    required this.passwordTextController,
  });

  @override
  Widget build(BuildContext context) {
    final isObscured = useState(true);
    return TextField(
      controller: passwordTextController,
      obscureText: isObscured.value,
      style: LGTextStyle.p1.black,
      decoration: InputDecoration(
        hintStyle: LGTextStyle.p1.gray_50,
        hintText: context.l10n.login_password_hint_text,
        suffixIcon: Align(
          alignment: Alignment.centerRight,
          widthFactor: 1,
          heightFactor: 1,
          child: IconButton(
            icon: isObscured.value
                ? const FaIcon(
                    FontAwesomeIcons.eyeSlash,
                    size: 16,
                    color: LGColors.gray_70,
                  )
                : const FaIcon(
                    FontAwesomeIcons.eye,
                    size: 16,
                    color: LGColors.gray_70,
                  ),
            onPressed: () {
              isObscured.value = !isObscured.value;
            },
          ),
        ),
      ),
    );
  }
}
