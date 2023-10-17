import 'package:flutter/material.dart';
import 'package:flutter_module/bloc/global/global_controller.dart';

class GlobalInheritedWidget extends InheritedWidget {
  final GlobalController controller;
  GlobalInheritedWidget({
    Key? key,
    required this.controller,
    required Widget child,
  }) : super(key: key, child: child);

  static GlobalInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GlobalInheritedWidget>();
  }

  @override
  bool updateShouldNotify(GlobalInheritedWidget oldWidget) {
    // return oldWidget.locale != locale;
    return false;
  }
}
