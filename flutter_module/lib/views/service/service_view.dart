import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_module/mixin/route_mixin.dart';

class ServiceView extends StatefulWidget with RouteMixin {
  const ServiceView({super.key});

  static const String routeName = "/service";

  static MaterialPageRoute route(RouteSettings routeSettings) =>
      MaterialPageRoute(builder: (context) => const ServiceView());

  @override
  State<ServiceView> createState() => _ServiceViewState();
}

class _ServiceViewState extends State<ServiceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.serviceViewTitle),
      ),
      body: Center(
        child: Text("service"),
      ),
    );
  }
}
