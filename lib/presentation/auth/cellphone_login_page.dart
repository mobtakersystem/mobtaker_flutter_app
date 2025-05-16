import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/validator.dart';
import 'package:mpm/common/widget/text_form_field.dart';
import 'package:mpm/common/widget/version_widget.dart';
import 'package:mpm/presentation/auth/check_otp_page.dart';
import 'package:mpm/presentation/auth/providers/login_provider.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CellphoneLoginPage extends HookConsumerWidget {
  CellphoneLoginPage({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginFlowProvider);

    ref.listen(
      loginFlowProvider,
      (previous, next) {
        if (next != previous && next is AsyncData) {
          next.value?.map(
            initial: (value) {},
            checkOtp: (value) {
              if (previous?.requireValue is! CheclOtp) {
                context.push(CheckOtpPage());
              }
            },
            success: (value) {},
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
                  'assets/images/logo.png',
                  height: 100,
                ),
                const SizedBox(
                  height: 26,
                ),
                AppTextFormField(
                  name: 'cellphone',
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    CustomValidator.cellphone,
                  ]),
                  decoration: const InputDecoration(
                    labelText: 'شماره موبایل',
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
                      ref.read(loginFlowProvider.notifier).phoneLogin(
                            _formKey.currentState!.value['cellphone'],
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
                const SizedBox(height: 48,),
                const VersionWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
