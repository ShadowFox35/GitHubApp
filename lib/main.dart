import 'package:core/core.dart';
import 'package:data/di/data_di.dart';
import 'package:flutter/material.dart';
import 'package:github_app/app/search_app.dart';

void main() async {
  dataDI.initDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  initNavigationDependencies();
  runApp(const SearchApp());
}
