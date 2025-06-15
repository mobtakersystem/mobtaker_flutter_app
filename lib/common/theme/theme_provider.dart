import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class ThemeModeData extends _$ThemeModeData {
  @override
  ThemeMode build() {
    return GetIt.I<ThemeMode>();
  }

  void setTheme(ThemeMode themeMode) async {
    await GetIt.I<FlutterSecureStorage>().write(
      key: "theme_mode",
      value: themeMode.name,
    );
    state = themeMode;
    GetIt.I.unregister<ThemeMode>();
    GetIt.I.registerSingleton<ThemeMode>(themeMode);
  }
}
