import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'appconf_state.dart';

class AppconfCubit extends Cubit<AppconfState> {
  AppconfCubit(AppconfState state) : super(state);

  updateLocale(Locale locale) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("_kLocaleKey", locale.languageCode);
    final newState = state.copy(locale: locale);
    emit(newState);
  }
}
