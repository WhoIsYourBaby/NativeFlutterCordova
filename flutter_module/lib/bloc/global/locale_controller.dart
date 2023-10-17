import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleController extends ChangeNotifier {
  Locale? _locale;
  Locale? get locale => _locale;

  LocaleController();

  load() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final localeStr = prefs.getString("locale");
    if (localeStr != null) {
      _locale = Locale(localeStr);
    }
  }

  updateLocale(Locale locale) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("locale", locale.languageCode);
    _locale = locale;
    notifyListeners();
  }
}
