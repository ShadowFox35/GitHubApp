part of 'main_bloc.dart';

class MainState {
  final bool isLoading;
  final bool isFavorite;
  final List<RepositoryEntity> repositoryList;
  final Object? error;

  const MainState({
    this.isLoading = true,
    this.isFavorite = false,
    this.repositoryList = const [],
    this.error,
  });

  MainState copyWith({
    List<RepositoryEntity>? repositoryList,
    bool? isLoading,
    bool? isFavorite,
    Object? error,
  }) {
    return MainState(
      repositoryList: repositoryList ?? this.repositoryList,
      isLoading: isLoading ?? this.isLoading,
      isFavorite: isFavorite ?? this.isFavorite,
      error: error ?? this.error,
    );
  }
}
