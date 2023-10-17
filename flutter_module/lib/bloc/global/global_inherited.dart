import 'package:flutter/material.dart';
import 'package:flutter_module/bloc/global/locale_controller.dart';

class GlobalInheritedWidget extends InheritedWidget {
  late LocaleController _localeController;
  LocaleController get localeController => _localeController;
  GlobalInheritedWidget({
    Key? key,
    required LocaleController controller,
    required Widget child,
  }) : super(key: key, child: child) {
    _localeController = controller;
  }

  static GlobalInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GlobalInheritedWidget>();
  }

  @override
  bool updateShouldNotify(GlobalInheritedWidget oldWidget) {
    return false;
  }
}
