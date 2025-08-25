import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:local_auth/local_auth.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/theme/theme_provider.dart';
import 'package:mpm/common/widget/dialog/confirm_dialog.dart';
import 'package:mpm/common/widget/version_widget.dart';
import 'package:mpm/flavors.dart' show F;
import 'package:mpm/presentation/auth/providers/auth_provider.dart';
import 'package:mpm/routes/app_router.gr.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

import 'auth/providers/biometrics_providers.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      drawer: _AppDrawer(),
      body: AutoRouter(),
    );
  }
}

class _AppDrawer extends ConsumerStatefulWidget {
  const _AppDrawer();

  @override
  ConsumerState<_AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends ConsumerState<_AppDrawer> {
  late ValueNotifier<Jalali> _nowNotifier;
  late final Ticker _ticker;

  @override
  void initState() {
    super.initState();
    _nowNotifier = ValueNotifier<Jalali>(Jalali.now());
    _ticker = Ticker((_) {
      _nowNotifier.value = Jalali.now();
    })
      ..start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    _nowNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final supportBiometric = ref.watch(biometricAvailableProvider);
    final biometricType = ref.watch(biometricTypeProvider);
    final biometricText = ref.watch(biometricTypeTextProvider);
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  context.appLogo,
                  height: 56,
                ),
                const SizedBox(width: double.infinity, height: 0),
                ValueListenableBuilder<Jalali>(
                  valueListenable: _nowNotifier,
                  builder: (context, now, _) {
                    final timeString =
                        "${now.formatter.tHH}:${now.formatter.tMM}";
                    final dateString = now.formatFullDate();
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          timeString,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          dateString,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
          if (F.isDashboardModuleEnable)
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text('داشبورد'),
              onTap: () {
                Navigator.of(context).pop();
                // Navigate to dashboard page
                // Navigator.of(context).pushReplacement(...);
                context.navigateTo(const DashboardRoute());
              },
            ),
          if (F.isMiningModuleEnable)
            ListTile(
              leading: const Icon(Icons.analytics),
              title: const Text('حفاری'),
              onTap: () {
                Navigator.of(context).pop();
                context.navigateTo(const ProjectsIndexRoute());
                // Navigate to drilling page
                // Navigator.of(context).pushReplacement(...);
              },
            ),
          const Divider(),
          ListTile(
            leading: Icon(Theme.of(context).brightness == Brightness.dark
                ? Icons.dark_mode
                : Icons.light_mode),
            title: const Text('تم برنامه'),
            onTap: () {
              // Implement your theme change logic here

              showThemeChangeModalSheet(context, ref);
            },
            trailing: Text(
              _themeModeToText(
                ref.watch(themeModeDataProvider),
              ),
            ),
          ),
          supportBiometric.maybeWhen(
            data: (data) => data
                ? SwitchListTile(
                    secondary: Icon(biometricType.value == BiometricType.face
                        ? Icons.face
                        : Icons.fingerprint),
                    title: Text('ورود با ${biometricText.value ?? ''}'),
                    onChanged: (value) {
                      // Implement biometric login enable/disable logic here
                      // For example, show a dialog or toggle a provider
                      _biometricAuthentication(!value
                              ? "غیرفعال کردن ورود با ${biometricText.value ?? ''}"
                              : " فعال کردن ورود با ${biometricText.value ?? ''}")
                          .then((successAuth) {
                        if (successAuth) {
                          ref.watch(setLoginBiometricEnableProvider(value));
                        }
                      });
                    },
                    value: ref.watch(isLoginBiometricEnableProvider).maybeWhen(
                          data: (isEnabled) => isEnabled,
                          orElse: () => false,
                        ),
                  )
                : const SizedBox.shrink(),
            orElse: () => const SizedBox(),
          ),
          const Spacer(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('خروج از حساب'),
            onTap: () {
              ConfirmDialog.show(
                context,
                message: "آیا از خروج از برنامه اطمینان دارید؟",
                confirmCallBack: () {
                  ref.read(authProvider.notifier).unAuthenticated().then(
                    (value) {
                      if (context.mounted) {
                        context.popAllAndPush(const SplashRoute());
                      }
                    },
                  );
                },
              );
            },
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: Row(
              children: [
                Text(
                  "پشتیبانی مبتکر سیستم",
                  style: context.textTheme.bodySmall,
                ),
                const Spacer(),
                const VersionWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }

  String _themeModeToText(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.light:
        return "روشن";
      case ThemeMode.dark:
        return "تیره";
      case ThemeMode.system:
        return "سیستم";
    }
  }

  Future<bool> _biometricAuthentication(String reason) async {
    try {
      final auth = LocalAuthentication();
      final bool authenticated = await auth.authenticate(
        localizedReason: reason,
        options: const AuthenticationOptions(
            useErrorDialogs: true, stickyAuth: true, biometricOnly: true),
      );
      return authenticated;
    } catch (e) {
      return false;
    }
  }

  void showThemeChangeModalSheet(BuildContext context, WidgetRef ref) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'انتخاب تم',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: const Icon(Icons.light_mode),
                title: const Text('تم روشن'),
                onTap: () {
                  ref
                      .read(themeModeDataProvider.notifier)
                      .setTheme(ThemeMode.light);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.dark_mode),
                title: const Text('تم تیره'),
                onTap: () {
                  ref
                      .read(themeModeDataProvider.notifier)
                      .setTheme(ThemeMode.dark);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.brightness_auto),
                title: const Text('تم خودکار (سیستم)'),
                onTap: () {
                  ref
                      .read(themeModeDataProvider.notifier)
                      .setTheme(ThemeMode.system);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
