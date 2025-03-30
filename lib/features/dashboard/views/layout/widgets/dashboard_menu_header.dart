import 'package:flutter/material.dart';
import 'package:vaultarium/features/dashboard/views/layout/widgets/app_name.dart';

class DashboardMenuHeader extends StatelessWidget {
  const DashboardMenuHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
      child: const AppName(inverted: true),
    );
  }
}
