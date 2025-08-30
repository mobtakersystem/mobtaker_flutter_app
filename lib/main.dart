import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/sl_config.dart';
import 'package:mpm/common/theme/theme_data.dart';
import 'package:mpm/common/theme/theme_provider.dart';
import 'package:mpm/common/work_manager_config.dart';
import 'package:mpm/routes/app_router.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:workmanager/workmanager.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'flavors.dart';

void main() async {
  F.appFlavor = Flavor.values.firstWhere(
    (element) => element.name == appFlavor,
  );
  WidgetsFlutterBinding.ensureInitialized();
  Workmanager().initialize(
    callbackDispatcher,
    isInDebugMode: kDebugMode,
  );
  await slConfig(GetIt.instance);
  timeago.setLocaleMessages('fa', timeago.FaMessages());
  runApp(ProviderScope(child: Phoenix(child: const MyApp())));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ref) {
    return MaterialApp.router(
      title: 'MineBi',
      locale: const Locale('fa', 'IR'),
      supportedLocales: const [
        Locale('fa', 'IR'),
      ],
      routerConfig: GetIt.I<AppRouter>().config(),
      localizationsDelegates: const [
        // AppLocalizations.delegate,
        PersianMaterialLocalizations.delegate,
        PersianCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FormBuilderLocalizations.delegate,
      ],
      theme: AppTheme.light.copyWith(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[400]!,
            ), // رنگ پیش‌فرض بوردر
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[400]!,
            ),
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: const Color(0xFFFD9843),
            foregroundColor: Colors.white,
          ),
        ),
      ),
      darkTheme: AppTheme.dark.copyWith(
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white30,
            ), //
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white30,
            ),
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: const Color(0xFFFD9843),
            foregroundColor: Colors.white,
          ),
        ),
      ),
      themeMode: ref.watch(themeModeDataProvider),
    );
  }
}
