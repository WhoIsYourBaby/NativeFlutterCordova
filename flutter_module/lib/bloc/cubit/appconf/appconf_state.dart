part of 'appconf_cubit.dart';

const String _kLocaleKey = "_kLocaleKey";

class AppconfState {
  Locale? locale;
  AppTheme appTheme;
  AppconfState({
    this.locale,
    required this.appTheme,
  });

  static Future<AppconfState> load() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final localeStr = prefs.getString(_kLocaleKey);
    return AppconfState(
      locale: localeStr != null ? Locale(localeStr) : null,
      appTheme: AppTheme(),
    );
  }

  AppconfState copy({
    Locale? locale,
    AppTheme? appTheme,
  }) {
    return AppconfState(
      locale: locale ?? this.locale,
      appTheme: appTheme ?? this.appTheme,
    );
  }
}

class AppTheme {
  AppTheme();
  // 色卡--
  // 背景1、背景2
  Color get backgroundColor => const Color(0xFFF4F4F4);
  Color get backgroundColor2 => const Color(0xFFF2F5F7);

  // 主色
  Color get primaryColor => const Color(0xFF1990FF);

  // 文字 主要/通常/次要/占位
  Color get primaryTextColor => const Color(0xFF303133);
  Color get normalTextColor => const Color(0xFF606266);
  Color get minorTextColor => const Color(0xFF909399);
  Color get placeholderTextColor => const Color(0xFFC0C4CC);

  // 边框
  Color get borderColor => const Color(0xFFDCDFE6);
  Color get borderColor2 => const Color(0xFFDCDFE6);
}
