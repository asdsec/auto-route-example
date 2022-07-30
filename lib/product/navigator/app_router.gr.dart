// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:flutter/src/foundation/key.dart' as _i11;

import '../../view/dashboard/dashboard_view.dart' as _i3;
import '../../view/dashboard/settings/settings_view.dart' as _i4;
import '../../view/dashboard/user/model/user_model.dart' as _i12;
import '../../view/dashboard/user/user_detail_view.dart' as _i7;
import '../../view/dashboard/user/user_view.dart' as _i6;
import '../../view/home/home_detail_view.dart' as _i2;
import '../../view/home/home_view.dart' as _i1;
import '../guard/auth_guard.dart' as _i10;
import 'app_router.dart' as _i5;

class AppRouter extends _i8.RootStackRouter {
  AppRouter(
      {_i9.GlobalKey<_i9.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i10.AuthGuard authGuard;

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeView());
    },
    HomeDetailRoute.name: (routeData) {
      final args = routeData.argsAs<HomeDetailRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.HomeDetailView(key: args.key, title: args.title));
    },
    DashBoardRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.DashBoardView());
    },
    SettingsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SettingsView());
    },
    DashboardEmpty.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyPageRoute());
    },
    UserRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.UserView());
    },
    UserDetailRoute.name: (routeData) {
      final args = routeData.argsAs<UserDetailRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.UserDetailView(key: args.key, model: args.model));
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(HomeRoute.name, path: '/'),
        _i8.RouteConfig(HomeDetailRoute.name,
            path: '/home-detail-view', guards: [authGuard]),
        _i8.RouteConfig(DashBoardRoute.name,
            path: '/dash-board-view',
            children: [
              _i8.RouteConfig(SettingsRoute.name,
                  path: 'settings-view', parent: DashBoardRoute.name),
              _i8.RouteConfig(DashboardEmpty.name,
                  path: 'empty-page-route',
                  parent: DashBoardRoute.name,
                  children: [
                    _i8.RouteConfig(UserRoute.name,
                        path: '', parent: DashboardEmpty.name),
                    _i8.RouteConfig(UserDetailRoute.name,
                        path: 'user-detail-view', parent: DashboardEmpty.name)
                  ]),
              _i8.RouteConfig(SettingsRoute.name,
                  path: 'settings-view', parent: DashBoardRoute.name)
            ])
      ];
}

/// generated route for
/// [_i1.HomeView]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.HomeDetailView]
class HomeDetailRoute extends _i8.PageRouteInfo<HomeDetailRouteArgs> {
  HomeDetailRoute({_i11.Key? key, required String title})
      : super(HomeDetailRoute.name,
            path: '/home-detail-view',
            args: HomeDetailRouteArgs(key: key, title: title));

  static const String name = 'HomeDetailRoute';
}

class HomeDetailRouteArgs {
  const HomeDetailRouteArgs({this.key, required this.title});

  final _i11.Key? key;

  final String title;

  @override
  String toString() {
    return 'HomeDetailRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i3.DashBoardView]
class DashBoardRoute extends _i8.PageRouteInfo<void> {
  const DashBoardRoute({List<_i8.PageRouteInfo>? children})
      : super(DashBoardRoute.name,
            path: '/dash-board-view', initialChildren: children);

  static const String name = 'DashBoardRoute';
}

/// generated route for
/// [_i4.SettingsView]
class SettingsRoute extends _i8.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings-view');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i5.EmptyPageRoute]
class DashboardEmpty extends _i8.PageRouteInfo<void> {
  const DashboardEmpty({List<_i8.PageRouteInfo>? children})
      : super(DashboardEmpty.name,
            path: 'empty-page-route', initialChildren: children);

  static const String name = 'DashboardEmpty';
}

/// generated route for
/// [_i6.UserView]
class UserRoute extends _i8.PageRouteInfo<void> {
  const UserRoute() : super(UserRoute.name, path: '');

  static const String name = 'UserRoute';
}

/// generated route for
/// [_i7.UserDetailView]
class UserDetailRoute extends _i8.PageRouteInfo<UserDetailRouteArgs> {
  UserDetailRoute({_i11.Key? key, required _i12.UserModel model})
      : super(UserDetailRoute.name,
            path: 'user-detail-view',
            args: UserDetailRouteArgs(key: key, model: model));

  static const String name = 'UserDetailRoute';
}

class UserDetailRouteArgs {
  const UserDetailRouteArgs({this.key, required this.model});

  final _i11.Key? key;

  final _i12.UserModel model;

  @override
  String toString() {
    return 'UserDetailRouteArgs{key: $key, model: $model}';
  }
}
