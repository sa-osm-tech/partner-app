import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGFallbackDialog.dart';
import 'package:logerex_partner/common_widgets/LGRedbutton.dart';
import 'package:logerex_partner/features/home/screens/employees-mgmt/ShowPasswordScreen.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';
import 'package:string_validator/string_validator.dart';

class NewEmployeeForm extends HookConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  NewEmployeeForm({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isButtonDisabled = useState(true);

    final fullNameTextController = useTextEditingController();
    final fullNameUpdate = useValueListenable(fullNameTextController);
    final emailTextController = useTextEditingController();
    final emailUpdate = useValueListenable(emailTextController);
    final phoneNumberTextController = useTextEditingController();
    final phoneNumberUpdate = useValueListenable(phoneNumberTextController);

    useEffect(
      () {
        if (fullNameUpdate.text.isEmpty ||
            emailUpdate.text.isEmpty ||
            phoneNumberUpdate.text.isEmpty) {
          isButtonDisabled.value = true;
        } else {
          isButtonDisabled.value = false;
        }
        return null;
      },
      [fullNameUpdate, emailUpdate, phoneNumberUpdate],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Their profile',
                  style: LGTextStyle.h4.black,
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: fullNameTextController,
                  style: LGTextStyle.p1.black,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (text) {
                    if (text != null && text.split(' ').length == 2) {
                      for (text in text.split(' ')) {
                        if (!isAlpha(text)) {
                          return 'Please enter a valid name';
                        }
                      }
                      return null;
                    }
                    return 'Please enter a valid name';
                  },
                  decoration: InputDecoration(
                    hintStyle: LGTextStyle.p1.gray_50,
                    hintText: 'Full Name',
                    isDense: true,
                    errorStyle: LGTextStyle.p4.primary_100,
                  ),
                ),
                const SizedBox(height: 25),
                TextFormField(
                  controller: emailTextController,
                  style: LGTextStyle.p1.black,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (text) {
                    if (text != null && isEmail(text)) {
                      return null;
                    }
                    return 'Please enter a valid email';
                  },
                  decoration: InputDecoration(
                    hintStyle: LGTextStyle.p1.gray_50,
                    hintText: 'Email',
                    isDense: true,
                    errorStyle: LGTextStyle.p4.primary_100,
                  ),
                ),
                const SizedBox(height: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Phone Number',
                      style: LGTextStyle.p1.gray_50,
                    ),
                    TextFormField(
                      controller: phoneNumberTextController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
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
                  ],
                )
              ],
            ),
          ),
        ),
        LGRedButton(
          text: 'Add Employee',
          onPressed: isButtonDisabled.value
              ? null
              : () {
                  final isValidForm = _formKey.currentState!.validate();
                  if (!isValidForm) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          const LGFallbackAlertDialog(
                        title: 'Invalid Request',
                        content: 'Please check your inputs at each field.',
                      ),
                    );
                    return;
                  }
                  print(fullNameTextController.text);
                  print(emailTextController.text);
                  print(phoneNumberTextController.text);
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const ShowPasswordScreen(),
                    ),
                  );
                },
        ),
      ],
    );
  }
}
