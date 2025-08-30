import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/widget/loading_widget.dart';
import 'package:mpm/presentation/auth/providers/auth_provider.dart';
import 'package:mpm/routes/app_router.gr.dart';

@RoutePage()
class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<AuthState>>(authProvider, (oldState, state) {
      state.when(
        data: (data) {
          if (data is Authenticated) {
            context.replaceRoute(const HomeRoute());
          } else {
            context.replaceRoute(LoginRoute());
          }
        },
        loading: () {},
        error: (error, stackTrace) {
          // handle error
        },
      );
    });
    return const Scaffold(
      body: LoadingWidget(),
    );
  }
}
