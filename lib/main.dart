import 'package:flex_color_scheme/flex_color_scheme.dart';
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
import 'package:mpm/common/work_manager_config.dart';
import 'package:mpm/presentation/splash_page.dart';
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
  runApp(Phoenix(child: const ProviderScope(child: MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MineBi',
      locale: const Locale('fa', 'IR'),
      supportedLocales: const [
        Locale('fa', 'IR'),
      ],
      localizationsDelegates: const [
        // AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FormBuilderLocalizations.delegate,
      ],
      theme:  FlexThemeData.light(
        fontFamily: 'irYekan',
        // Using FlexColorScheme built-in FlexScheme enum based colors
        scheme: FlexScheme.indigoM3,
        // Component theme configurations for light mode.
        subThemesData: const FlexSubThemesData(
          interactionEffects: true,
          tintedDisabledControls: true,
          useM2StyleDividerInM3: true,
          inputDecoratorIsFilled: true,
          inputDecoratorBorderType: FlexInputBorderType.outline,
          alignedDropdown: true,
          navigationRailUseIndicator: true,
        ),
        // Direct ThemeData properties.
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
      ),
      home: const SplashPage(),
    );
  }
}
