import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/widget/dialog/confirm_dialog.dart';
import 'package:mpm/common/widget/version_widget.dart';
import 'package:mpm/presentation/auth/providers/auth_provider.dart';
import 'package:mpm/routes/app_router.gr.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

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
    // You may want to replace these with your actual navigation and providers
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 56,
                  height: 56,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ValueListenableBuilder<Jalali>(
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
                ),
              ],
            ),
          ),
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
                ? Icons.light_mode
                : Icons.dark_mode),
            title: const Text('تغییر تم'),
            onTap: () {
              // Implement your theme change logic here
              // For example, using a provider or setState
            },
          ),
          ListTile(
            leading: const Icon(Icons.fingerprint),
            title: const Text('فعال‌سازی ورود بیومتریک'),
            onTap: () {
              // Implement biometric login enable/disable logic here
              // For example, show a dialog or toggle a provider
            },
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
}
