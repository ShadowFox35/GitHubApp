import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:navigation/navigation.dart';

class SearchApp extends StatefulWidget {
  const SearchApp({super.key});

  @override
  State<SearchApp> createState() => _SearchAppState();
}

class _SearchAppState extends State<SearchApp> {
  final _appRouter = appLocator.get<AppRouter>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      // theme: AppTheme.light
    );
  }
}
