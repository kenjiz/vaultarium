import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_components/ui_components.dart';

class ActionView extends StatefulWidget {
  const ActionView({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  State<ActionView> createState() => _ActionViewState();
}

class _ActionViewState extends State<ActionView> {
  int _selected = 0;

  StatefulNavigationShell get nav => widget.navigationShell;

  List<ActionItem> get adminActionList => [
    ActionItem(
      title: 'Portfolios',
      icon: Ionicons.build_outline,
      selectedIcon: Ionicons.build,
      onPress: () => nav.goBranch(0, initialLocation: nav.currentIndex == 0),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final item = adminActionList[index];
        return SideMenuItem(
          onPressed: () {
            setState(() => _selected = index);
            item.onPress();
          },
          title: item.title,
          icon: _selected == index ? item.selectedIcon : item.icon,
          isSelected: _selected == index,
        );
      },
      itemCount: adminActionList.length,
    );
  }
}

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({
    required this.onPressed,
    required this.title,
    required this.icon,
    required this.isSelected,
    super.key,
  });

  final VoidCallback onPressed;
  final String title;
  final IconData icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        vertical: Dimens.s12,
        horizontal: Dimens.s24,
      ),
      selected: isSelected,
      dense: true,
      title: Text(title),
      leading: Icon(icon),
      onTap: onPressed,
    );
  }
}

class ActionItem {
  ActionItem({
    required this.title,
    required this.icon,
    required this.selectedIcon,
    required this.onPress,
  });

  final String title;
  final IconData icon;
  final IconData selectedIcon;
  final Function() onPress;
}
