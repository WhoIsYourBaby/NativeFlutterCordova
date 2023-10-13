import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_module/mixin/route_mixin.dart';

class LoginView extends StatefulWidget with RouteMixin {
  const LoginView({super.key});

  static const String routeName = "/login";

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.loginViewTitle),
      ),
      body: Center(
        child: Text(AppLocalizations.of(context)!.loginViewTitle),
      ),
    );
  }
}
