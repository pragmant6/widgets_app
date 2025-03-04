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
        GoRoute(
          path: '/animated',
          name: AnimatedScreen.routeName,
          builder: (BuildContext context, GoRouterState state) {
            return AnimatedScreen();
          },
        ),
        GoRoute(
          path: '/app-tutorial',
          name: AppTutorialScreen.routeName,
          builder: (BuildContext context, GoRouterState state) {
            return AppTutorialScreen();
          },
        ),
        GoRoute(
          path: '/infinite-scroll',
          name: InfiniteScrollScreen.routeName,
          builder: (BuildContext context, GoRouterState state) {
            return InfiniteScrollScreen();
          },
        ),
        GoRoute(
          path: '/progress',
          name: ProgressScreen.routeName,
          builder: (BuildContext context, GoRouterState state) {
            return ProgressScreen();
          },
        ),
        GoRoute(
          path: '/snackbar',
          name: SnackbarScreen.routeName,
          builder: (BuildContext context, GoRouterState state) {
            return SnackbarScreen();
          },
        ),
        GoRoute(
          path: '/ui-controls',
          name: UiControlsScreen.routeName,
          builder: (BuildContext context, GoRouterState state) {
            return UiControlsScreen();
          },
        ),
      ],
    ),
  ],
);
