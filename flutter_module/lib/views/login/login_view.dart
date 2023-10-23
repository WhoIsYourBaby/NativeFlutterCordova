import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_module/bloc/cubit/auth/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    final sSize = MediaQuery.of(context).size;
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(AppLocalizations.of(context)!.loginViewTitle),
        ),
        body: Container(
          height: sSize.height / 2,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(),
              TextField(),
              MaterialButton(
                  onPressed: () {
                    context
                        .read<AuthCubit>()
                        .login(email: "ligun123", password: "5815057");
                  },
                  child: Text('Login')),
            ],
          ),
        ),
      ),
      onWillPop: (() async {
        return false;
      }),
    );
  }
}
