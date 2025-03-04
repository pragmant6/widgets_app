import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/cards',
          builder: (BuildContext context, GoRouterState state) {
            return CardsScreen();
          },
        ),
        GoRoute(
          path: '/buttons',
          builder: (BuildContext context, GoRouterState state) {
            return ButtonsScreen();
          },
        ),
      ],
    ),
  ],
);
