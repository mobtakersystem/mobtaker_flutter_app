import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:local_auth/local_auth.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/widget/dialog/confirm_dialog.dart';
import 'package:mpm/common/widget/text_form_field.dart';
import 'package:mpm/presentation/auth/providers/biometrics_providers.dart';
import 'package:mpm/presentation/auth/providers/login_provider.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mpm/routes/app_router.gr.dart';

@RoutePage()
class LoginPage extends HookConsumerWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginFlowProvider);
    final isBiometricEnable = ref.watch(isLoginBiometricEnableProvider);
    final biometricType = ref.watch(biometricTypeProvider);
    final biometricText = ref.watch(biometricTypeTextProvider);

    ref.listen(
      loginFlowProvider,
      (previous, next) {
        if (next != previous && next is AsyncData) {
          next.value?.map(
            initial: (value) {},
            checkOtp: (value) {
              if (previous?.requireValue is! CheclOtp) {
                context.push(CheckOtpRoute());
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
                context.popAllAndPush(const HomeRoute());
              }
            },
          );
        } else if (previous != next &&
            next is AsyncError &&
            next.error != null) {
          context.showErrorMessage(next.error!);
        }
      },
    );
    return Scaffold(
      appBar: AppBar(),
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(context.isLightTheme
                ? "assets/images/nodes-blue.png"
                : "assets/images/nodes-blue-dark.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: context.height * .85,
          ),
          child: SingleChildScrollView(
            child: FormBuilder(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Center(
                      child: Image.asset(
                        context.appLogo,
                        height: 80,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "لطفا شماره موبایل خود را وارد کنید",
                      style: context.textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppTextFormField(
                      name: 'userName',
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        FormBuilderValidators.phoneNumber(
                          regex: RegExp("^09[0-9]{9}\$"),
                        ),
                      ]),
                      decoration: const InputDecoration(
                        labelText: 'موبایل',
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox.square(
                      dimension: 16,
                    ),
                    // AppTextFormField(
                    //   name: 'password',
                    //   validator: FormBuilderValidators.compose([
                    //     FormBuilderValidators.required(),
                    //   ]),
                    //   obscureText: true,
                    //   autocorrect: false,
                    //   decoration: const InputDecoration(
                    //     labelText: 'رمز عبور',
                    //   ),
                    // ),
                    // const SizedBox.square(
                    //   dimension: 16,
                    // ),
                    FilledButton(
                      style: FilledButton.styleFrom(
                        minimumSize: const Size(double.infinity, 48),
                      ),
                      onPressed: () {
                        // ref.read(loginFlowProvider.notifier).biometricLogin();
                        if (_formKey.currentState?.saveAndValidate() ?? false) {
                          ref.read(loginFlowProvider.notifier).userPassLogin(
                                userName:
                                    _formKey.currentState?.value['userName'],
                                // password:
                                //     _formKey.currentState?.value['password'],
                              );
                        }
                      },
                      child: loginState.maybeWhen(
                          skipLoadingOnReload: false,
                          skipLoadingOnRefresh: false,
                          loading: () => CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation(
                                  context.onButtonColor,
                                ),
                              ),
                          orElse: () => const Text('ورود')),
                    ),
                    const SizedBox.square(
                      dimension: 16,
                    ),
                    isBiometricEnable.maybeWhen(
                      data: (data) => data
                          ? Center(
                              child: TextButton.icon(
                                onPressed: () {
                                  ref
                                      .read(loginFlowProvider.notifier)
                                      .biometricLogin();
                                },
                                label: Text(
                                    'ورود با ${biometricText.value ?? ''}'),
                                icon: Icon(
                                  biometricType.value == BiometricType.face
                                      ? Icons.face
                                      : Icons.fingerprint,
                                ),
                              ),
                            )
                          : const SizedBox.shrink(),
                      orElse: () => const SizedBox.shrink(),
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                  ],
                ),
              ),
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
