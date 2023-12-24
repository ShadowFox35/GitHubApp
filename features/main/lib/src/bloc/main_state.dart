part of 'main_bloc.dart';

class MainState {
  final bool isLoading;
  final List<RepositoryEntity> repositoryList;
  final Object? error;

  const MainState({
    this.isLoading = true,
    this.repositoryList = const [],
    this.error,
  });

  MainState copyWith({
    List<RepositoryEntity>? repositoryList,
    bool? isLoading,
    Object? error,
  }) {
    return MainState(
      repositoryList: repositoryList ?? this.repositoryList,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}
