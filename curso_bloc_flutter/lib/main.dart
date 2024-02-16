import 'package:curso_bloc_flutter/config/router/app_router.dart';
import 'package:curso_bloc_flutter/config/theme/app_theme.dart';
import 'package:curso_bloc_flutter/presentation/blocs/counter_bloc/counter_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MultiBlocProvider(providers: [
      BlocProvider(create: (context) => CounterBlocBloc()),
    ], child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      title: 'Material App',
    );
  }
}
