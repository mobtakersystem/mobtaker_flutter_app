import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract final class AppTheme {
  // The FlexColorScheme defined light mode ThemeData.
  static ThemeData light = FlexThemeData.light(
    fontFamily: 'irYekan',
    // Using FlexColorScheme built-in FlexScheme enum based colors
    colorScheme: lightColorScheme,
    // // Convenience direct styling properties.
    // appBarElevation: 7.0,
    // Component theme configurations for light mode.
    subThemesData: const FlexSubThemesData(
      interactionEffects: true,
      tintedDisabledControls: true,
      useM2StyleDividerInM3: true,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      alignedDropdown: true,
      appBarBackgroundSchemeColor: SchemeColor.white,
      navigationRailUseIndicator: true,
    ),
    // Direct ThemeData properties.
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );

  // The FlexColorScheme defined dark mode ThemeData.
  static ThemeData dark = FlexThemeData.dark(
    fontFamily: 'irYekan',
    // Using FlexColorScheme built-in FlexScheme enum based colors.
    colorScheme: darkColorScheme,
    // Component theme configurations for dark mode.
    subThemesData: const FlexSubThemesData(
      interactionEffects: true,
      tintedDisabledControls: true,
      blendOnColors: true,
      useM2StyleDividerInM3: true,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      alignedDropdown: true,
      navigationRailUseIndicator: true,
    ),
    // Direct ThemeData properties.
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );
}

/// Light [ColorScheme] made with FlexColorScheme v8.2.0.
/// Requires Flutter 3.22.0 or later.
const ColorScheme lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF1E3A5F),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFDEE0FF),
  onPrimaryContainer: Color(0xFF000000),
  primaryFixed: Color(0xFFD6DAF0),
  primaryFixedDim: Color(0xFFACB3E1),
  onPrimaryFixed: Color(0xFF1D2450),
  onPrimaryFixedVariant: Color(0xFF222B5D),
  secondary: Color(0xFF3C64AE),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFD8E2FF),
  onSecondaryContainer: Color(0xFF000000),
  secondaryFixed: Color(0xFFD2DDF0),
  secondaryFixedDim: Color(0xFFA9BCDF),
  onSecondaryFixed: Color(0xFF192947),
  onSecondaryFixedVariant: Color(0xFF1D3055),
  tertiary: Color(0xFF537577),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFA9D4D6),
  onTertiaryContainer: Color(0xFF000000),
  tertiaryFixed: Color(0xFFD8E2E3),
  tertiaryFixedDim: Color(0xFFB6C6C7),
  onTertiaryFixed: Color(0xFF1E2B2B),
  onTertiaryFixedVariant: Color(0xFF263536),
  error: Color(0xFFBA1A1A),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFDAD6),
  onErrorContainer: Color(0xFF000000),
  surface: Color(0xFFFCFCFC),
  onSurface: Color(0xFF111111),
  surfaceDim: Color(0xFFE0E0E0),
  surfaceBright: Color(0xFFFDFDFD),
  surfaceContainerLowest: Color(0xFFFFFFFF),
  surfaceContainerLow: Color(0xFFF8F8F8),
  surfaceContainer: Color(0xFFF3F3F3),
  surfaceContainerHigh: Color(0xFFEDEDED),
  surfaceContainerHighest: Color(0xFFE7E7E7),
  onSurfaceVariant: Color(0xFF393939),
  outline: Color(0xFF919191),
  outlineVariant: Color(0xFFD1D1D1),
  shadow: Color(0xFF000000),
  scrim: Color(0xFF000000),
  inverseSurface: Color(0xFF2A2A2A),
  onInverseSurface: Color(0xFFF1F1F1),
  inversePrimary: Color(0xFFDCE3FF),
  surfaceTint: Color(0xFF1E3A5F),
);

/// Dark [ColorScheme] made with FlexColorScheme v8.2.0.
/// Requires Flutter 3.22.0 or later.
const ColorScheme darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF769fd4),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFF293CA0),
  onPrimaryContainer: Color(0xFFFFFFFF),
  primaryFixed: Color(0xFFD6DAF0),
  primaryFixedDim: Color(0xFFACB3E1),
  onPrimaryFixed: Color(0xFF1D2450),
  onPrimaryFixedVariant: Color(0xFF222B5D),
  secondary: Color(0xFFAEC6FF),
  onSecondary: Color(0xFF000000),
  secondaryContainer: Color(0xFF14448D),
  onSecondaryContainer: Color(0xFFFFFFFF),
  secondaryFixed: Color(0xFFD2DDF0),
  secondaryFixedDim: Color(0xFFA9BCDF),
  onSecondaryFixed: Color(0xFF192947),
  onSecondaryFixedVariant: Color(0xFF1D3055),
  tertiary: Color(0xFFA9CDCF),
  onTertiary: Color(0xFF000000),
  tertiaryContainer: Color(0xFF2A4C4E),
  onTertiaryContainer: Color(0xFFFFFFFF),
  tertiaryFixed: Color(0xFFD8E2E3),
  tertiaryFixedDim: Color(0xFFB6C6C7),
  onTertiaryFixed: Color(0xFF1E2B2B),
  onTertiaryFixedVariant: Color(0xFF263536),
  error: Color(0xFFFFB4AB),
  onError: Color(0xFF000000),
  errorContainer: Color(0xFF93000A),
  onErrorContainer: Color(0xFFFFFFFF),
  surface: Color(0xFF080808),
  onSurface: Color(0xFFF1F1F1),
  surfaceDim: Color(0xFF060606),
  surfaceBright: Color(0xFF2C2C2C),
  surfaceContainerLowest: Color(0xFF010101),
  surfaceContainerLow: Color(0xFF0E0E0E),
  surfaceContainer: Color(0xFF151515),
  surfaceContainerHigh: Color(0xFF1D1D1D),
  surfaceContainerHighest: Color(0xFF282828),
  onSurfaceVariant: Color(0xFFCACACA),
  outline: Color(0xFF777777),
  outlineVariant: Color(0xFF414141),
  shadow: Color(0xFF000000),
  scrim: Color(0xFF000000),
  inverseSurface: Color(0xFFE8E8E8),
  onInverseSurface: Color(0xFF2A2A2A),
  inversePrimary: Color(0xFF54586B),
  surfaceTint: Color(0xFF769fd4),
);
