import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:local_auth/local_auth.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/widget/text_form_field.dart';
import 'package:mpm/common/widget/version_widget.dart';
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
            success: (value) {
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
                Image.asset(
                  context.appLogo,
                  height: 100,
                ),
                const SizedBox(
                  height: 26,
                ),
                AppTextFormField(
                  name: 'userName',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email(),
                  ]),
                  decoration: const InputDecoration(
                    labelText: 'نام کاربری',
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox.square(
                  dimension: 16,
                ),
                AppTextFormField(
                  name: 'password',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  obscureText: true,
                  autocorrect: false,
                  decoration: const InputDecoration(
                    labelText: 'رمز عبور',
                  ),
                ),
                const SizedBox.square(
                  dimension: 16,
                ),
                FilledButton(
                  style: FilledButton.styleFrom(
                    minimumSize: const Size(double.infinity, 48),
                  ),
                  onPressed: () {
                    // ref.read(loginFlowProvider.notifier).biometricLogin();
                    if (_formKey.currentState?.saveAndValidate() ?? false) {
                      ref.read(loginFlowProvider.notifier).userPassLogin(
                            userName: _formKey.currentState?.value['userName'],
                            password: _formKey.currentState?.value['password'],
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
                      ? TextButton.icon(
                          onPressed: () {
                            ref
                                .read(loginFlowProvider.notifier)
                                .biometricLogin();
                          },
                          label: Text('ورود با ${biometricText.value ?? ''}'),
                          icon: Icon(
                            biometricType.value == BiometricType.face
                                ? Icons.face
                                : Icons.fingerprint,
                          ),
                        )
                      : const SizedBox.shrink(),
                  orElse: () => const SizedBox.shrink(),
                ),
                const SizedBox(
                  height: 48,
                ),
                const VersionWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
