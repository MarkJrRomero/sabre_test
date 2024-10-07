import 'package:go_router/go_router.dart';
import 'package:sabre_test_1/features/home/home.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
