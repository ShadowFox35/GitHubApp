import 'package:get_it/get_it.dart';
import 'package:navigation/navigation.dart';

final GetIt appLocator = GetIt.instance;

void initNavigationDependencies() {
  appLocator.registerSingleton<AppRouter>(AppRouter());
}
