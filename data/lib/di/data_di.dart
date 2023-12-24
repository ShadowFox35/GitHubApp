import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';

final DataDI dataDI = DataDI();

class DataDI {
  void initDependencies() {
    _initProviders();
    _initRepositories();
    _initUseCases();
  }

  void _initProviders() {
    // appLocator.registerLazySingleton<HiveProvider>(
    //   () => HiveProvider(),
    // );
    appLocator.registerLazySingleton<GitHubProvider>(
      () => GitHubProvider(dio: Dio()),
    );
  }

  void _initRepositories() {
    appLocator.registerLazySingleton<SearchRepository>(
      () => SearchRepositoryImpl(
        githubProvider: appLocator<GitHubProvider>(),
      ),
    );
  }

  void _initUseCases() {
    appLocator.registerLazySingleton<SearchRepositoriesUseCase>(
      () => SearchRepositoriesUseCase(
        searchRepository: appLocator<SearchRepository>(),
      ),
    );
  }
}
