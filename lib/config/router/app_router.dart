import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: HomeScreen.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/cards',
          name: CardsScreen.routeName,
          builder: (BuildContext context, GoRouterState state) {
            return CardsScreen();
          },
        ),
        GoRoute(
          path: '/buttons',
          name: ButtonsScreen.routeName,
          builder: (BuildContext context, GoRouterState state) {
            return ButtonsScreen();
          },
        ),
      ],
    ),
  ],
);
