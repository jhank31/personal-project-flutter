import 'package:curso_bloc_flutter/presentation/pages/pages.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: "/cubits",
    builder: (context, state) => const CubitCounterPage(),
  ),
  GoRoute(
    path: "/counter_bloc",
    builder: (context, state) => const BlocCounterPage(),
  ),
]);
