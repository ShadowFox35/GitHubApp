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
    appLocator.registerLazySingleton<HiveProvider>(
      () => HiveProvider(),
    );
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

    appLocator.registerLazySingleton<FavoriteRepository>(
      () => FavoriteRepositoryImpl(
        hiveProvider: appLocator<HiveProvider>(),
      ),
    );
  }

  void _initUseCases() {
    appLocator.registerLazySingleton<SearchRepositoriesUseCase>(
      () => SearchRepositoriesUseCase(
        searchRepository: appLocator<SearchRepository>(),
      ),
    );

    appLocator.registerLazySingleton<AddFavoriteUseCase>(
      () => AddFavoriteUseCase(
        favoriteRepository: appLocator<FavoriteRepository>(),
      ),
    );

    appLocator.registerLazySingleton<RemoveFavoriteUseCase>(
      () => RemoveFavoriteUseCase(
        favoriteRepository: appLocator<FavoriteRepository>(),
      ),
    );

    appLocator.registerLazySingleton<GetFavoriteUseCase>(
      () => GetFavoriteUseCase(
        favoriteRepository: appLocator<FavoriteRepository>(),
      ),
    );
  }
}
