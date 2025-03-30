import 'package:flutter/material.dart';
import 'package:ui_components/button/theme/button_theme.dart';
import 'package:ui_components/fields/theme/field_theme.dart';
import 'package:ui_components/flashbar/theme/flashbar_theme.dart';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:vaultarium/core/app_color_scheme.dart';

/// The [AppTheme] defines light and dark themes for the app.
///
/// Theme setup for FlexColorScheme package v8.
/// Use same major flex_color_scheme package version. If you use a
/// lower minor version, some properties may not be supported.
/// In that case, remove them after copying this theme to your
/// app or upgrade the package to version 8.2.0.
///
/// Use it in a [MaterialApp] like this:
///
/// MaterialApp(
///   theme: AppTheme.light,
///   darkTheme: AppTheme.dark,
/// );
abstract final class AppTheme {
  // The FlexColorScheme defined light mode ThemeData.
  static ThemeData light = FlexThemeData.light(
    // User defined custom colors made with FlexSchemeColor() API.
    colors: FlexSchemeColor(
      primary: lightColorScheme.primary,
      primaryContainer: lightColorScheme.primaryContainer,
      secondary: lightColorScheme.secondary,
      secondaryContainer: lightColorScheme.secondaryContainer,
      tertiary: lightColorScheme.tertiary,
      tertiaryContainer: lightColorScheme.tertiaryContainer,
      appBarColor: Color(0xFFFFDBCF),
      error: lightColorScheme.error,
      errorContainer: lightColorScheme.errorContainer,
    ),
    // Input color modifiers.
    usedColors: 3,
    // Surface color adjustments.
    surfaceMode: FlexSurfaceMode.highBackgroundLowScaffold,
    blendLevel: 1,
    // Convenience direct styling properties.
    appBarStyle: FlexAppBarStyle.background,
    bottomAppBarElevation: 2.0,
    // Component theme configurations for light mode.
    subThemesData: const FlexSubThemesData(
      interactionEffects: true,
      tintedDisabledControls: true,
      blendOnLevel: 6,
      useM2StyleDividerInM3: true,
      adaptiveSplash: FlexAdaptive.all(),
      splashType: FlexSplashType.inkSparkle,
      splashTypeAdaptive: FlexSplashType.inkSparkle,
      adaptiveElevationShadowsBack: FlexAdaptive.excludeWebAndroidFuchsia(),
      adaptiveAppBarScrollUnderOff: FlexAdaptive.excludeWebAndroidFuchsia(),
      adaptiveRadius: FlexAdaptive.excludeWebAndroidFuchsia(),
      defaultRadius: 4.0,
      defaultRadiusAdaptive: 4.0,
      elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
      elevatedButtonSecondarySchemeColor: SchemeColor.primaryContainer,
      outlinedButtonOutlineSchemeColor: SchemeColor.primary,
      toggleButtonsBorderSchemeColor: SchemeColor.primary,
      segmentedButtonSchemeColor: SchemeColor.primary,
      segmentedButtonBorderSchemeColor: SchemeColor.primary,
      unselectedToggleIsColored: true,
      sliderValueTinted: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      inputDecoratorPrefixIconSchemeColor: SchemeColor.primary,
      inputDecoratorSuffixIconSchemeColor: SchemeColor.primary,
      fabUseShape: true,
      fabAlwaysCircular: true,
      fabSchemeColor: SchemeColor.tertiary,
      cardRadius: 14.0,
      popupMenuRadius: 6.0,
      popupMenuElevation: 3.0,
      alignedDropdown: true,
      dialogRadius: 18.0,
      appBarScrolledUnderElevation: 1.0,
      drawerElevation: 1.0,
      drawerIndicatorSchemeColor: SchemeColor.primary,
      bottomSheetRadius: 18.0,
      bottomSheetElevation: 2.0,
      bottomSheetModalElevation: 4.0,
      bottomNavigationBarMutedUnselectedLabel: false,
      bottomNavigationBarMutedUnselectedIcon: false,
      menuRadius: 6.0,
      menuElevation: 3.0,
      menuBarRadius: 0.0,
      menuBarElevation: 1.0,
      menuBarShadowColor: Color(0x00000000),
      searchBarElevation: 4.0,
      searchViewElevation: 4.0,
      searchUseGlobalShape: true,
      navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
      navigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
      navigationBarIndicatorSchemeColor: SchemeColor.primary,
      navigationBarElevation: 1.0,
      navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
      navigationRailSelectedIconSchemeColor: SchemeColor.onPrimary,
      navigationRailUseIndicator: true,
      navigationRailIndicatorSchemeColor: SchemeColor.primary,
      navigationRailIndicatorOpacity: 1.00,
      navigationRailBackgroundSchemeColor: SchemeColor.surface,
    ),
    // Direct ThemeData properties.
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
    extensions: lightThemeExtensions,
  );

  // The FlexColorScheme defined dark mode ThemeData.
  static ThemeData dark = FlexThemeData.dark(
    // User defined custom colors made with FlexSchemeColor() API.
    colors: FlexSchemeColor(
      primary: darkColorScheme.primary,
      primaryContainer: darkColorScheme.primaryContainer,
      secondary: darkColorScheme.secondary,
      secondaryContainer: darkColorScheme.secondaryContainer,
      tertiary: darkColorScheme.tertiary,
      tertiaryContainer: darkColorScheme.tertiaryContainer,
      appBarColor: Color(0xFFFFDBCF),
      error: darkColorScheme.error,
      errorContainer: darkColorScheme.errorContainer,
    ),
    // Input color modifiers.
    usedColors: 3,
    // Surface color adjustments.
    surfaceMode: FlexSurfaceMode.highBackgroundLowScaffold,
    blendLevel: 2,
    // Convenience direct styling properties.
    appBarStyle: FlexAppBarStyle.background,
    bottomAppBarElevation: 2.0,
    // Component theme configurations for dark mode.
    subThemesData: const FlexSubThemesData(
      interactionEffects: true,
      tintedDisabledControls: true,
      blendOnLevel: 8,
      blendOnColors: true,
      useM2StyleDividerInM3: true,
      adaptiveSplash: FlexAdaptive.all(),
      splashType: FlexSplashType.inkSparkle,
      splashTypeAdaptive: FlexSplashType.inkSparkle,
      adaptiveElevationShadowsBack: FlexAdaptive.all(),
      adaptiveAppBarScrollUnderOff: FlexAdaptive.excludeWebAndroidFuchsia(),
      adaptiveRadius: FlexAdaptive.excludeWebAndroidFuchsia(),
      defaultRadius: 4.0,
      defaultRadiusAdaptive: 4.0,
      elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
      elevatedButtonSecondarySchemeColor: SchemeColor.primaryContainer,
      outlinedButtonOutlineSchemeColor: SchemeColor.primary,
      toggleButtonsBorderSchemeColor: SchemeColor.primary,
      segmentedButtonSchemeColor: SchemeColor.primary,
      segmentedButtonBorderSchemeColor: SchemeColor.primary,
      unselectedToggleIsColored: true,
      sliderValueTinted: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      fabUseShape: true,
      fabAlwaysCircular: true,
      fabSchemeColor: SchemeColor.tertiary,
      cardRadius: 14.0,
      popupMenuRadius: 6.0,
      popupMenuElevation: 3.0,
      alignedDropdown: true,
      dialogRadius: 18.0,
      appBarScrolledUnderElevation: 3.0,
      drawerElevation: 1.0,
      drawerIndicatorSchemeColor: SchemeColor.primary,
      bottomSheetRadius: 18.0,
      bottomSheetElevation: 2.0,
      bottomSheetModalElevation: 4.0,
      bottomNavigationBarMutedUnselectedLabel: false,
      bottomNavigationBarMutedUnselectedIcon: false,
      menuRadius: 6.0,
      menuElevation: 3.0,
      menuBarRadius: 0.0,
      menuBarElevation: 1.0,
      menuBarShadowColor: Color(0x00000000),
      searchBarElevation: 4.0,
      searchViewElevation: 4.0,
      searchUseGlobalShape: true,
      navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
      navigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
      navigationBarIndicatorSchemeColor: SchemeColor.primary,
      navigationBarElevation: 1.0,
      navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
      navigationRailSelectedIconSchemeColor: SchemeColor.onPrimary,
      navigationRailUseIndicator: true,
      navigationRailIndicatorSchemeColor: SchemeColor.primary,
      navigationRailIndicatorOpacity: 1.00,
      navigationRailBackgroundSchemeColor: SchemeColor.surface,
    ),
    // Direct ThemeData properties.
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
    extensions: darkThemeExtensions,
  );
}

final lightThemeExtensions = <ThemeExtension<dynamic>>[
  FlashbarThemeExt(
    success: lightColorScheme.tertiary,
    error: lightColorScheme.error,
    warning: lightColorScheme.secondaryContainer,
    info: lightColorScheme.primary,
  ),
  FieldTheme(
    primary: lightColorScheme.primary,
    secondary: lightColorScheme.secondary,
    error: lightColorScheme.error,
  ),
  AppButtonTheme(
    primaryBackgroundColor: lightColorScheme.primary,
    secondaryBackgroundColor: lightColorScheme.secondary,
    primaryBorderColor: lightColorScheme.primary,
    secondaryBorderColor: lightColorScheme.secondary,
    primaryTextColor: Colors.white,
    secondaryTextColor: Colors.white,
  ),
];

final darkThemeExtensions = <ThemeExtension<dynamic>>[
  FlashbarThemeExt(
    success: darkColorScheme.tertiary,
    error: darkColorScheme.error,
    warning: darkColorScheme.secondaryContainer,
    info: darkColorScheme.primary,
  ),
  FieldTheme(
    primary: darkColorScheme.primary,
    secondary: darkColorScheme.secondary,
    error: darkColorScheme.error,
  ),
  AppButtonTheme(
    primaryBackgroundColor: darkColorScheme.primary,
    secondaryBackgroundColor: darkColorScheme.secondary,
    primaryBorderColor: darkColorScheme.primary,
    secondaryBorderColor: darkColorScheme.secondary,
    primaryTextColor: Colors.white,
    secondaryTextColor: Colors.white,
  ),
];
