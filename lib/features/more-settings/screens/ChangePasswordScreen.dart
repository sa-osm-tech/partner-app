import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/common_widgets/LGAppbar.dart';
import 'package:logerex_partner/constants/LGEnums.dart';
import 'package:logerex_partner/features/more-settings/states/change-password/ChangePasswordState.dart';
import 'package:logerex_partner/features/more-settings/widgets/change-password/SetNewPasswordBody.dart';
import 'package:logerex_partner/features/more-settings/widgets/change-password/VerifyPasswordBody.dart';
import 'package:logerex_partner/themes/LGTextStyle.dart';
import 'package:logerex_partner/utils/LGLocalization.dart';
import 'package:logerex_partner/utils/http/LGHttp.dart';

class ChangePasswordScreen extends HookConsumerWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateNotifier =
        ref.watch(changePasswordStateNotifierProvider.notifier);
    final state = ref.watch(changePasswordStateNotifierProvider);

    // for VerifyPasswordBody
    final verifyPasswordTextController = useTextEditingController();

    Widget switchBody() {
      switch (state.changePasswordState) {
        case CHANGE_PWD_STATE.VERIFY_PWD:
          return VerifyPasswordBody(verifyPasswordTextController);
        case CHANGE_PWD_STATE.SET_NEW_PWD:
          return const SetNewPasswordBody();
        default:
          return VerifyPasswordBody(verifyPasswordTextController);
      }
    }

    List<Widget>? switchActions() {
      switch (state.changePasswordState) {
        case CHANGE_PWD_STATE.VERIFY_PWD:
          return [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: RichText(
                    text: TextSpan(
                      text: context.l10n.change_password_appbar_next_action,
                      style: state.isNextActionEnable
                          ? LGTextStyle.h4.primary_100
                          : LGTextStyle.h4.secondary_50,
                      recognizer: TapGestureRecognizer()
                        ..onTap = state.isNextActionEnable
                            ? () async {
                                final isSuccessfullyVerified =
                                    await LGHttp().verifyUserPassword(
                                  verifyPasswordTextController.text,
                                );
                                if (isSuccessfullyVerified) {
                                  print('verified successfully');
                                  stateNotifier.setChangePasswordState(
                                    CHANGE_PWD_STATE.SET_NEW_PWD,
                                  );
                                } else {
                                  print('verified unsuccessfully');
                                }
                              }
                            : null,
                    ),
                  ),
                ),
              ],
            )
          ];
        case CHANGE_PWD_STATE.SET_NEW_PWD:
          return null;
      }
    }

    return Scaffold(
      appBar: LGAppbar(
        title: context.l10n.change_password_appbar_title,
        actions: switchActions(),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 18, right: 18, top: 36, bottom: 55),
          child: switchBody(),
        ),
      ),
    );
  }
}
