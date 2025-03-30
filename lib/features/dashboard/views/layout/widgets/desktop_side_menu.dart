import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_components/ui_components.dart';
import 'package:vaultarium/features/dashboard/views/layout/widgets/action_view.dart';
import 'package:vaultarium/features/dashboard/views/layout/widgets/dashboard_menu_header.dart';

class DesktopSideMenu extends StatefulWidget {
  const DesktopSideMenu({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  State<DesktopSideMenu> createState() => _DesktopSideMenuState();
}

class _DesktopSideMenuState extends State<DesktopSideMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        border: Border(right: BorderSide(color: Colors.grey[300]!)),
        color: Colors.white,
      ),
      child: ListView(
        children: [
          const SizedBox(height: 68, child: DashboardMenuHeader()),
          SizedBox(
            height: context.mediaQuery.size.height - 120,
            child: ActionView(navigationShell: widget.navigationShell),
          ),
        ],
      ),
    );
  }
}
