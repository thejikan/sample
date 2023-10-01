import 'package:sample/router/routesHelperClass.dart';

class AppRoutes {
  static const home = RoutesBase(
    name: "home",
    routePath: "/home",
    routeSubPath: "home",
  );
  static const login = RoutesBase(
    name: "login",
    routePath: '/home/login',
    routeSubPath: "login",
  );
  static const register = RoutesBase(
    name: "register",
    routePath: '/home/register',
    routeSubPath: "register",
  );
  static const info = RoutesBase(
    name: "info",
    routePath: '/home/info',
    routeSubPath: "info",
  );
  static const booking = RoutesBase(
    name: "booking",
    routePath: "/home/info/booking",
    routeSubPath: "booking",
  );
  static const confirmation = RoutesBase(
    name: "confirmation",
    routePath: "/home/info/booking/confirmation",
    routeSubPath: "confirmation",
  );

}
