import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_module/bloc/global/global_inherited.dart';
import 'package:flutter_module/mixin/route_mixin.dart';

class MineView extends StatefulWidget with RouteMixin {
  const MineView({super.key});

  static const String routeName = "/mine";

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (context) => const MineView());

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
        child: MaterialButton(
          onPressed: () {
            final locale = Locale("zh");
            GlobalInheritedWidget.of(context)
                ?.localeController
                .updateLocale(locale);
          },
          child: Text("change local"),
        ),
      ),
    );
  }
}
