import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:local_auth/local_auth.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/widget/dialog/confirm_dialog.dart';
import 'package:mpm/common/widget/text_form_field.dart';
import 'package:mpm/presentation/auth/providers/biometrics_providers.dart';
import 'package:mpm/presentation/auth/providers/login_provider.dart';
import 'package:mpm/presentation/auth/timer/otp_timer_widget.dart';
import 'package:mpm/presentation/home_page.dart';

class CheckOtpPage extends HookConsumerWidget {
  CheckOtpPage({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showResend = useState(false);

    ref.listen(
      loginFlowProvider,
      (previous, next) {
        if (next != previous && next is AsyncData) {
          next.value?.maybeMap(
            checkOtp: (value) {
              if (!next.isLoading || next.error == null) {
                showResend.value = false;
              }
            },
            success: (value) async {
              final isBiometricIsAvailable =
                  await ref.read(biometricAvailableProvider.future);
              final isBiometricLoginEnable =
                  await ref.read(isLoginBiometricEnableProvider.future);
              if (isBiometricIsAvailable &&
                  !isBiometricLoginEnable &&
                  context.mounted) {
                bool successEnable = false;
                await _showDialogSuggestion(context, () {
                  successEnable = true;
                });
                if (successEnable) {
                  if (await _biometricAuthentication(
                      "فعال سازی ورود بیومتریک")) {
                    await ref
                        .read(setLoginBiometricEnableProvider(true).future);
                  }
                }
              }
              if (context.mounted) {
                context.popAllAndPush(const HomePage());
              }
            },
            orElse: () {},
          );
        }
      },
    );
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: FormBuilder(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                // const DYLogoWidget(
                //   height: 100,
                //   logoType: LogoType.full,
                // ),
                const SizedBox(
                  height: 26,
                ),
                AppTextFormField(
                  name: 'otp',
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.minLength(6),
                    FormBuilderValidators.maxLength(6),
                  ]),
                  decoration: const InputDecoration(
                    labelText: 'کد تایید',
                  ),
                ),
                const SizedBox.square(
                  dimension: 16,
                ),
                const SizedBox.square(
                  dimension: 16,
                ),
                FilledButton(
                  style: FilledButton.styleFrom(
                    minimumSize: const Size(double.infinity, 48),
                  ),
                  onPressed: () {
                    if (_formKey.currentState?.saveAndValidate() ?? false) {
                      ref.read(loginFlowProvider.notifier).phoneCheckOtp(
                          _formKey.currentState?.value['otp'] as String);
                    }
                  },
                  child: ref.watch(loginFlowProvider).isLoading
                      ? CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(
                            context.onButtonColor,
                          ),
                        )
                      : const Text('تایید'),
                ),
                const SizedBox.square(
                  dimension: 16,
                ),

                Visibility(
                  visible: !showResend.value,
                  child: CountDownTimerWidget(
                    duration: const Duration(seconds: 120),
                    onEnd: () {
                      showResend.value = true;
                    },
                  ),
                ),
                Visibility(
                  visible: showResend.value,
                  child: TextButton(
                    onPressed: () {
                      ref.read(loginFlowProvider.notifier).resendOtp();
                    },
                    child: const Text('ارسال مجدد کد تایید'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showDialogSuggestion(
      BuildContext context, VoidCallback onConfirm) async {
    await ConfirmDialog.show(
      context,
      message: "آیا میخواهید ورود بیومتریک را برای ورود مجدد فعال کنید؟",
      confirmCallBack: onConfirm,
    );
  }

  Future<bool> _biometricAuthentication(String reason) async {
    try {
      final auth = LocalAuthentication();
      final bool authenticated = await auth.authenticate(
        localizedReason: reason,
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
      return authenticated;
    } catch (e) {
      return false;
    }
  }
}
