import 'package:flutter/material.dart';
import 'package:flutter_module/bloc/cubit/appconf/appconf_cubit.dart';
import 'package:flutter_module/utils/builders.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_module/views/login/login_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginEntryView extends StatelessWidget {
  const LoginEntryView({super.key});

  static Route route() =>
      MaterialPageRoute(builder: (ctx) => const LoginEntryView());

  @override
  Widget build(BuildContext context) {
    final appTheme = context.read<AppconfCubit>().state.appTheme;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: [
          GestureDetector(
            onTap: () {
              // TODO 实现更多语言包可切换
              // context.read<AppconfCubit>().updateLocale(locale);
            },
            child: Row(
              children: [
                Image.asset("assets/images/language.png"),
                SizedBox(width: 2),
                Text(
                  AppLocalizations.of(context)!.changeLanguage,
                  style: TextStyle(color: appTheme.normalTextColor),
                ),
                SizedBox(width: 14),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/login_bkg.png",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Flexible(
              child: Center(
                child: Image.asset("assets/images/FUJIA.png"),
              ),
            ),
            Flexible(
              child: Column(
                children: [
                  buildPrimaryButton(
                    context,
                    AppLocalizations.of(context)!.beginUse,
                    () {
                      Navigator.push(context, LoginView.route());
                    },
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/arrow_right.png"),
                      SizedBox(width: 6),
                      Text(
                        AppLocalizations.of(context)!.bussinessLogin,
                        style: TextStyle(
                          color: appTheme.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
