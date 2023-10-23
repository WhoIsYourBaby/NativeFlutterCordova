import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_module/app.dart';
import 'package:flutter_module/bloc/cubit/appconf/appconf_cubit.dart';
import 'package:flutter_module/bloc/cubit/auth/auth_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final AppconfState appconfState = await AppconfState.load();
  runApp(
    MyApp(
      appconfCubit: AppconfCubit(appconfState),
    ),
  );
}

class MyApp extends StatelessWidget {
  final AppconfCubit appconfCubit;
  const MyApp({
    required this.appconfCubit,
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) {
            final cubit = AuthCubit();
            cubit.syncAuth();
            return cubit;
          },
        ),
        BlocProvider.value(value: appconfCubit),
      ],
      child: AppView(),
    );
  }
}
