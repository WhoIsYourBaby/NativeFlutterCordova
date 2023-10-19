import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'locale_state.dart';

const String _kLocaleKey = "_kLocaleKey";

class LocaleCubit extends Cubit<Locale?> {
  LocaleCubit(Locale? locale) : super(locale);

  updateLocale(Locale locale) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("_kLocaleKey", locale.languageCode);
    emit(locale);
  }

  static Future<LocaleCubit> load() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final localeStr = prefs.getString(_kLocaleKey);
    return LocaleCubit(localeStr != null ? Locale(localeStr) : null);
  }
}
