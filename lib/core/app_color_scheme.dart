import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';
import 'package:vaultarium/core/seed_colors.dart';

final ColorScheme schemeLight = SeedColorScheme.fromSeeds(
  brightness: Brightness.light,
  primaryKey: SeedColors.primary,
  secondaryKey: SeedColors.secondary,
  tertiaryKey: SeedColors.tertiary,
  errorKey: SeedColors.error,
  tones: FlexTones.vivid(Brightness.light),
);

final ColorScheme schemeDark = SeedColorScheme.fromSeeds(
  brightness: Brightness.dark,
  primaryKey: SeedColors.primary,
  secondaryKey: SeedColors.secondary,
  tertiaryKey: SeedColors.tertiary,
  errorKey: SeedColors.error,
  tones: FlexTones.vivid(Brightness.dark),
);
