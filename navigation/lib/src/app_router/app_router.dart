import 'package:auto_route/auto_route.dart';
import 'package:main/main.dart';

import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: MainScreen,
      path: '/',
      initial: true,
    ),
  ],
)
class AppRouter extends _$AppRouter {}
