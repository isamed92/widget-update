import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'buttons',
          name: ButtonsScreen.name,
          builder: (BuildContext context, GoRouterState state) {
            return const ButtonsScreen();
          },
        ),
        GoRoute(
          path: 'cards',
          name: CardsScreen.name,
          builder: (BuildContext context, GoRouterState state) {
            return const CardsScreen();
          },
        ),
        GoRoute(
          path: 'progress',
          builder: (BuildContext context, GoRouterState state) {
            return const ProgressScreen();
          },
        ),
        GoRoute(
          path: 'snackbars',
          builder: (BuildContext context, GoRouterState state) {
            return const SnackBarScreen();
          },
        ),
      ],
    ),
  ],
);
