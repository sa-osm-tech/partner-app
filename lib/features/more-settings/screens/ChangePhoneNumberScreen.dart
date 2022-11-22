import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGActionAlertDialog.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';
import 'package:logerex_partner/features/more-settings/states/personal-profile/PersonalProfileState.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';
import 'package:logerex_partner/utils/http/LGHttp.dart';
import 'package:string_validator/string_validator.dart';

class ChangePhoneNumberScreen extends HookConsumerWidget {
  const ChangePhoneNumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSaveActionEnable = useState(false);

    final changePhoneNumberTextController = useTextEditingController();
    final changePhoneNumberUpdate =
        useValueListenable(changePhoneNumberTextController);

    final personalProfileStateNotifier =
        ref.watch(personalProfileStateNotifierProvider.notifier);

    useEffect(
      () {
        if (changePhoneNumberUpdate.text.isNotEmpty &&
            changePhoneNumberUpdate.text.length == 9 &&
            isNumeric(changePhoneNumberUpdate.text)) {
          isSaveActionEnable.value = true;
        } else {
          isSaveActionEnable.value = false;
        }
        return null;
      },
      [changePhoneNumberUpdate],
    );

    return Scaffold(
      appBar: LGAppbar(
        title: context.l10n.change_phone_no_appbar_title,
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: RichText(
                  text: TextSpan(
                    text: context.l10n.change_phone_no_save_action,
                    style: isSaveActionEnable.value
                        ? LGTextStyle.h4.primary_100
                        : LGTextStyle.h4.secondary_50,
                    recognizer: TapGestureRecognizer()
                      ..onTap = isSaveActionEnable.value
                          ? () async {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) =>
                                    LGActionAlertDialog(
                                  title: 'Confirm Update',
                                  content:
                                      'Would you like to update your phone number?',
                                  onConfirm: () async {
                                    final isSuccess =
                                        await LGHttp().updateUserPhoneNumber(
                                      changePhoneNumberTextController.text,
                                    );
                                    if (isSuccess) {
                                      await personalProfileStateNotifier
                                          .getUserProfile();
                                      Navigator.of(context).pop();
                                      Navigator.of(context).pop();
                                    }
                                  },
                                ),
                              );
                            }
                          : null,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 36),
        child: Wrap(
          runSpacing: 20,
          children: [
            Text(
              context.l10n.change_phone_no_desc,
              style: LGTextStyle.p3.gray_70,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.change_phone_no_textfield_label,
                  style: LGTextStyle.p1.gray_50,
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 0,
                  ),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Form(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: TextFormField(
                            controller: changePhoneNumberTextController,
                            validator: (text) {
                              if (text != null &&
                                  text.length == 9 &&
                                  isNumeric(text)) {
                                return null;
                              }
                              return 'Please enter a valid phone number';
                            },
                            style: LGTextStyle.p1.black,
                            decoration: InputDecoration(
                              icon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/thailand-flag-icon.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '+66',
                                    style: LGTextStyle.p1.black,
                                  ),
                                ],
                              ),
                              isDense: true,
                              errorStyle: LGTextStyle.p4.primary_100,
                              border: const UnderlineInputBorder(),
                            ),
                          ),
                        ),
                      )
                    ],
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
