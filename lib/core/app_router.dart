import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vaultarium/features/auth/views/login_page.dart';
import 'package:vaultarium/features/dashboard/views/dashboard.dart';
import 'package:vaultarium/features/error/views/error_page.dart';
import 'package:vaultarium/features/home/views/home_page.dart';
import 'package:vaultarium/features/notifications/flashbar/views/flashbar_page.dart';
import 'package:vaultarium/features/portfolio/views/porfolio_page.dart';
import 'package:vaultarium/features/portfolio/views/portfolio_create_page.dart';
import 'package:vaultarium/features/portfolio/views/portfolio_details_page.dart';
import 'package:vaultarium/features/portfolio/views/portfolio_edit_page.dart';
import 'package:vaultarium/features/portfolio/views/portfolio_view_page.dart';

final mainNavKey = GlobalKey<NavigatorState>();
final flashbarNavKey = GlobalKey<NavigatorState>();
final dashboardNavKey = GlobalKey<StatefulNavigationShellState>();

class AppRouter {
  static const String home = '/';
  static const String login = '/login';
  static const String portfolio = '/portfolio';
  static const String portfolioDetails = ':portfolioId';
  static const String portfolioCreate = 'create';
  static const String portfolioEdit = ':portfolioId/edit';
  static const String portfolioView = ':portfolioId/view';

  static List<RouteBase> routes = [
    GoRoute(
      path: home,
      pageBuilder: (context, state) => MaterialPage(child: const HomePage()),
    ),
    ShellRoute(
      navigatorKey: flashbarNavKey,
      builder: (_, _, child) => FlashbarPage(child: child),
      routes: [
        GoRoute(
          path: login,
          name: login,
          pageBuilder:
              (context, state) => MaterialPage(child: const LoginPage()),
        ),
        StatefulShellRoute.indexedStack(
          key: dashboardNavKey,
          builder: (_, _, child) => DashboardPage(navigationShell: child),
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: portfolio,
                  name: portfolio,
                  pageBuilder:
                      (context, state) =>
                          MaterialPage(child: const PortfolioPage()),
                  routes: [
                    GoRoute(
                      path: portfolioDetails,
                      name: portfolioDetails,
                      pageBuilder:
                          (context, state) => MaterialPage(
                            child: PortfolioDetailsPage(
                              portfolioId: state.pathParameters['portfolioId']!,
                            ),
                          ),
                    ),
                    GoRoute(
                      path: portfolioCreate,
                      name: portfolioCreate,
                      pageBuilder:
                          (context, state) =>
                              MaterialPage(child: PortfolioCreatePage()),
                    ),
                    GoRoute(
                      path: portfolioEdit,
                      name: portfolioEdit,
                      pageBuilder:
                          (context, state) => MaterialPage(
                            child: PortfolioEditPage(
                              portfolioId: state.pathParameters['portfolioId']!,
                            ),
                          ),
                    ),
                    GoRoute(
                      path: portfolioView,
                      name: portfolioView,
                      pageBuilder:
                          (context, state) => MaterialPage(
                            child: PortfolioViewPage(
                              portfolioId: state.pathParameters['portfolioId']!,
                            ),
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ];

  static String redirect(GoRouterState state) {
    // todo
    return '';
  }

  static GoRouter router = GoRouter(
    navigatorKey: mainNavKey,
    debugLogDiagnostics: kDebugMode,
    initialLocation: login,
    routes: routes,
    errorPageBuilder:
        (context, state) => MaterialPage(child: const ErrorPage()),
  );
}
