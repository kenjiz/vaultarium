import 'package:flutter/material.dart';
import 'package:ui_components/button/theme/button_theme.dart';
import 'package:ui_components/fields/theme/field_theme.dart';
import 'package:ui_components/flashbar/theme/flashbar_theme.dart';
import 'package:vaultarium/core/app_color_scheme.dart';
import 'package:vaultarium/core/seed_colors.dart';

// TODO: add customization later
class AppTheme {
  static ThemeData light = ThemeData(
    colorScheme: schemeLight,
    extensions: themeExtensions,
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: SeedColors.primary),
        borderRadius: BorderRadius.circular(4),
      ),
      alignLabelWithHint: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      filled: false,
    ),
  );
  static ThemeData dark = ThemeData(
    colorScheme: schemeDark,
    extensions: themeExtensions,
  );
}

final themeExtensions = <ThemeExtension<dynamic>>[
  FlashbarThemeExt(
    success: SeedColors.tertiary,
    error: SeedColors.error,
    warning: Colors.amber,
    info: SeedColors.primary,
  ),
  FieldTheme(
    primary: SeedColors.primary,
    secondary: SeedColors.secondary,
    error: SeedColors.error,
  ),
  AppButtonTheme(
    primaryBackgroundColor: SeedColors.primary,
    secondaryBackgroundColor: SeedColors.secondary,
    primaryBorderColor: SeedColors.primary,
    secondaryBorderColor: SeedColors.secondary,
    primaryTextColor: Colors.white,
    secondaryTextColor: Colors.white,
  ),
];
