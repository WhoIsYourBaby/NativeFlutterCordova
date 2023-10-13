import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_module/mixin/route_mixin.dart';

class MineView extends StatefulWidget with RouteMixin {
  const MineView({super.key});

  static const String routeName = "/mine";

  @override
  State<MineView> createState() => _MineViewState();
}

class _MineViewState extends State<MineView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.mineViewTitle),
      ),
      body: Center(
        child: Text("mine"),
      ),
    );
  }
}
