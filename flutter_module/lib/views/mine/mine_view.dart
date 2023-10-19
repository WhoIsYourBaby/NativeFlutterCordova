import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_module/bloc/cubit/auth/cubit/auth_cubit.dart';
import 'package:flutter_module/bloc/global/global_inherited.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MineView extends StatefulWidget {
  const MineView({super.key});

  static Route route() =>
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
      body: ListView(
        children: [
          ListTile(
            title: Text("切换语言"),
            onTap: () {
              final locale = Locale("zh");
              GlobalInheritedWidget.of(context)
                  ?.localeController
                  .updateLocale(locale);
            },
          ),
          ListTile(
            title: Text("退出登录"),
            onTap: () {
              context.read<AuthCubit>().logout();
            },
          ),
        ],
      ),
    );
  }
}
