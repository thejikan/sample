part of 'router.dart';

GoRoute _homeRoutes() {
  return GoRoute(
    path: AppRoutes.home.routePath,
    builder: (context, state) {
      return HomeView();
    },
    routes: <RouteBase>[
      GoRoute(
        path: AppRoutes.login.routeSubPath,
        builder: (context, state) {
          return LoginView();
        },
      ),
      GoRoute(
        path: AppRoutes.register.routeSubPath,
        builder: (context, state) {
          return RegisterView();
        },
      ),
      GoRoute(
        path: AppRoutes.info.routeSubPath,
        builder: (context, state) {
          String data = state.extra as String;
          return InfoView(data: data);
        },
        routes: <RouteBase>[
          GoRoute(
            path: AppRoutes.booking.routeSubPath,
            builder: (context, state) {
              String data = state.extra as String;
              return BookingView(data: data);
            },
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes.confirmation.routeSubPath,
                builder: (context, state) {
                  Map<String, Object> data = state.extra as Map<String, Object>;
                  return ConfirmationView(data: data);
                },
              ),
            ],
          ),
        ],
      ),
    ],

  );
}
