import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/presentation/auth/login_page.dart';
import 'package:mpm/presentation/auth/providers/auth_provider.dart';
import 'package:mpm/presentation/home_page.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<AuthState>>(authProvider, (oldState, state) {
      state.when(
        data: (data) {
          if (data is Authenticated) {
            context.pushReplacement(const HomePage());
          } else {
            context.pushReplacement(LoginPage());
          }
        },
        loading: () {},
        error: (error, stackTrace) {
          // handle error
        },
      );
    });
    return const Scaffold(
        body: Center(
      child: CircularProgressIndicator(),
    ));
  }
}
