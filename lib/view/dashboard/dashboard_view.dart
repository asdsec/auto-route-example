import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../product/navigator/app_router.gr.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        DashboardEmpty(),
        SettingsRoute(),
      ],
      builder: (context, child, tabController) {
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: context.tabsRouter.activeIndex,
            onTap: context.tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.person), label: UserRoute.name),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: SettingsRoute.name),
            ],
          ),
        );
      },
    );
  }
}
