import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/view/dashboard/settings/settings_view.dart';

import '../navigator/app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation

    bool authenticated = false; // authenticate

    if (authenticated) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page

      router.pushWidget(const SettingsView());

      // router.push(LoginRoute(onResult: (success) {
      //   // if success == true the navigation will be resumed
      //   // else it will be aborted
      //   resolver.next(success);
      // }));
    }
  }
}
