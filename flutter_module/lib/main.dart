import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_module/app.dart';
import 'package:flutter_module/bloc/cubit/auth/cubit/auth_cubit.dart';
import 'package:flutter_module/bloc/cubit/locale/locale_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final LocaleCubit localeCubit = await LocaleCubit.load();
  runApp(
    MyApp(
      localeCubit: localeCubit,
    ),
  );
}

class MyApp extends StatelessWidget {
  final LocaleCubit localeCubit;
  const MyApp({
    required this.localeCubit,
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
        BlocProvider.value(value: localeCubit),
      ],
      child: AppView(),
    );
  }
}
