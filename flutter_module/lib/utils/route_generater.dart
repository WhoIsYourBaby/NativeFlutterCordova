import 'package:flutter/material.dart';
import 'package:flutter_module/views/login/login_view.dart';
import 'package:flutter_module/views/page404/notfound_view.dart';
import 'package:flutter_module/views/root_tabbar.dart';

MaterialPageRoute generateRoute(RouteSettings routeSettings) {
  return MaterialPageRoute(
    settings: routeSettings,
    builder: (BuildContext context) {
      final builder = routes[routeSettings.name];
      if (builder != null) {
        return builder(routeSettings);
      } else {
        return NotFoundView();
      }
    },
  );
}

typedef RouteBuilder = Widget Function(RouteSettings routeSettings);

final Map<String, RouteBuilder> routes = <String, RouteBuilder>{
  "/": (RouteSettings routeSettings) => const RootTabBar()
};

T? _argAt<T>(Object? args, int index) {
  assert(args is List, 'routeSettings.args must be a List');
  final argsList = args as List;
  if (argsList.length > index) {
    return argsList[index] as T;
  }
  return null;
}
