import 'package:flutter/material.dart';
import 'package:flutter_module/bloc/global/global_controller.dart';

class GlobalInheritedWidget extends InheritedWidget {
  late GlobalController _controller;
  GlobalController get controller => _controller;
  GlobalInheritedWidget({
    Key? key,
    required GlobalController controller,
    required Widget child,
  }) : super(key: key, child: child) {
    _controller = controller;
  }

  static GlobalInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GlobalInheritedWidget>();
  }

  @override
  bool updateShouldNotify(GlobalInheritedWidget oldWidget) {
    return oldWidget.controller.locale != controller.locale;
  }
}
