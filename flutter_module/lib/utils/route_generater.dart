import 'package:flutter/material.dart';
import 'package:flutter_module/views/login/login_view.dart';
import 'package:flutter_module/views/root_tabbar.dart';

MaterialPageRoute generateRoute(RouteSettings routeSettings) {
  return MaterialPageRoute(
    settings: routeSettings,
    builder: (BuildContext context) {
      switch (routeSettings.name) {
        case RootTabBar.routeName:
          // final args = routeSettings.arguments;
          // final settingsController = _argAt<SettingsController>(args, 0);
          return const RootTabBar();
        case LoginView.routeName:
          return const LoginView();
        default:
          return const RootTabBar();
      }
    },
  );
}

T? _argAt<T>(Object? args, int index) {
  assert(args is List, 'routeSettings.args must be a List');
  final argsList = args as List;
  if (argsList.length > index) {
    return argsList[index] as T;
  }
  return null;
}
