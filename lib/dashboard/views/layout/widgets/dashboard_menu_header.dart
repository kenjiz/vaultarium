import 'package:flutter/material.dart';
import 'package:vaultarium/core/seed_colors.dart';
import 'package:vaultarium/dashboard/views/layout/widgets/app_name.dart';

class DashboardMenuHeader extends StatelessWidget {
  const DashboardMenuHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(color: SeedColors.primary),
      child: const AppName(inverted: true),
    );
  }
}
