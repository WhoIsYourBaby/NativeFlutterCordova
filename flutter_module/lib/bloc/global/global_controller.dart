import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GlobalController {
  Locale? locale;

  GlobalController();

  load() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final localeStr = prefs.getString("locale");
    if (localeStr != null) {
      locale = Locale(localeStr);
    }
  }
}
