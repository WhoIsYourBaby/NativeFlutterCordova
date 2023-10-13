import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_module/mixin/route_mixin.dart';

class HomeView extends StatefulWidget with RouteMixin {
  const HomeView({super.key});

  static const String routeName = "/home";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.homeViewTitle),
      ),
      body: Center(
        child: Text("home"),
      ),
    );
  }
}
