import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vaultarium/dashboard/views/layout/desktop_dashboard.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return DesktopDashboard(navigationShell: navigationShell);
  }
}
