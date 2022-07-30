import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/view/dashboard/dashboard_view.dart';
import 'package:flutter/src/foundation/key.dart';

import '../../view/dashboard/settings/settings_view.dart';
import '../../view/dashboard/user/user_detail_view.dart';
import '../../view/dashboard/user/user_view.dart';
import '../../view/home/home_detail_view.dart';
import '../../view/home/home_view.dart';
import '../guard/auth_guard.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeView,
      initial: true,
    ),
    AutoRoute(page: HomeDetailView, guards: [AuthGuard]),
    AutoRoute(
      page: DashBoardView,
      children: [
        AutoRoute(page: SettingsView),
        AutoRoute(
          page: EmptyPageRoute,
          name: 'DashboardEmpty',
          children: [
            AutoRoute(page: UserView, initial: true),
            AutoRoute(page: UserDetailView),
          ],
        ),
        AutoRoute(page: SettingsView),
      ],
    ),
  ],
)
class $AppRouter {}

class EmptyPageRoute extends AutoRouter {
  const EmptyPageRoute({super.key});
}
