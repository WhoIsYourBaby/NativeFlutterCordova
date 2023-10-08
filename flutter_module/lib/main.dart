import 'package:flutter/material.dart';
import 'package:flutter_module/home_view.dart';
import 'package:flutter_module/second_view.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/":
            return MaterialPageRoute(
                builder: (ctx) => MyHomePage(title: '指定路由HomePage'));
          case "/second":
            return MaterialPageRoute(builder: (ctx) => SecondView());
          default:
            return MaterialPageRoute(
                builder: (ctx) => MyHomePage(title: '默认路由HomePage'));
        }
      },
    );
  }
}
