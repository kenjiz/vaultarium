import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_components/ui_components.dart';
import 'package:vaultarium/dashboard/views/layout/widgets/desktop_side_menu.dart';

class DesktopDashboard extends StatefulWidget {
  const DesktopDashboard({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  State<DesktopDashboard> createState() => _DesktopDashboardState();
}

class _DesktopDashboardState extends State<DesktopDashboard> {
  @override
  void initState() {
    super.initState();
    if (kIsWeb) BrowserContextMenu.disableContextMenu();
  }

  @override
  void dispose() {
    super.dispose();
    if (kIsWeb) BrowserContextMenu.enableContextMenu();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Row(
        children: [
          DesktopSideMenu(navigationShell: widget.navigationShell),
          Flexible(child: widget.navigationShell),
        ],
      ),
    );
  }
}
