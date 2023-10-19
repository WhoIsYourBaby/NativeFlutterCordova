import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  static Route route() =>
      MaterialPageRoute(builder: (context) => const LoginView());

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(AppLocalizations.of(context)!.loginViewTitle),
        ),
        body: Center(
          child: Text(AppLocalizations.of(context)!.loginViewTitle),
        ),
      ),
      onWillPop: (() async {
        return false;
      }),
    );
  }
}
