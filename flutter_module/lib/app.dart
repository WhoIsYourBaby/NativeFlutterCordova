import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_module/bloc/cubit/auth/cubit/auth_cubit.dart';
import 'package:flutter_module/bloc/global/global_inherited.dart';
import 'package:flutter_module/bloc/global/locale_controller.dart';
import 'package:flutter_module/views/login/login_view.dart';
import 'package:flutter_module/views/page404/notfound_view.dart';
import 'package:flutter_module/views/root_tabbar.dart';
import 'package:flutter_module/views/splash/splash_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      builder: (context, child) {
        return BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            switch (state.status) {
              case LoginStatus.login:
                _navigator.pushAndRemoveUntil<void>(
                  RootTabBar.route(),
                  (route) => false,
                );
                break;
              case LoginStatus.logout:
                _navigator.pushAndRemoveUntil<void>(
                  LoginView.route(),
                  (route) => false,
                );
                break;
              default:
                break;
            }
          },
          child: child,
        );
      },
      debugShowCheckedModeBanner: false,
      title: '富家海外',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in a Flutter IDE). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      onGenerateRoute: (_) => SplashView.route(),
      onUnknownRoute: (settings) => NotFoundView.route(),
      locale: GlobalInheritedWidget.of(context)?.localeController.locale,
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
    );
  }
}
