part of 'favorite_bloc.dart';

class FavoriteState {
  final bool isLoading;
  final bool isFavorite;
  final List<RepositoryEntity> favoritesList;
  final Object? error;

  const FavoriteState({
    this.isLoading = true,
    this.isFavorite = true,
    this.favoritesList = const [],
    this.error,
  });

  FavoriteState copyWith({
    List<RepositoryEntity>? favoritesList,
    bool? isLoading,
    bool? isFavorite,
    Object? error,
  }) {
    return FavoriteState(
      favoritesList: favoritesList ?? this.favoritesList,
      isLoading: isLoading ?? this.isLoading,
      isFavorite: isFavorite ?? this.isFavorite,
      error: error ?? this.error,
    );
  }
}
