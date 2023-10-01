import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/features/booking.dart';
import 'package:sample/features/confirmation.dart';
import 'package:sample/features/home.dart';
import 'package:sample/features/info.dart';
import 'package:sample/features/login.dart';
import 'package:sample/features/register.dart';
import 'package:sample/main.dart';
import 'package:sample/router/appRoutesEnum.dart';

part 'appRoutes.dart';

typedef PopViewCallback = void Function(bool result);

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state) {
        return MyHomePage(title: 'Flutter Demo Home Page');
      },
      redirect: (BuildContext context, GoRouterState state) async {

        return AppRoutes.home.routePath;
      },
    ),

    _homeRoutes(),

  ],
);