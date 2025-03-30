import 'package:flutter/material.dart';
import 'package:vaultarium/core/app_provider.dart';
import 'package:vaultarium/core/app_router.dart';
import 'package:vaultarium/core/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Vaultarium',
      themeMode: ThemeMode.light,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      routerConfig: AppRouter.router,
      builder: (context, child) => AppProvider(child: child),
    );
  }
}
