import 'package:domain/domain.dart';

class RemoveFavoriteUseCase implements UseCase<RepositoryEntity, void> {
  final FavoriteRepository _favoriteRepository;

  const RemoveFavoriteUseCase({
    required FavoriteRepository favoriteRepository,
  }) : _favoriteRepository = favoriteRepository;

  @override
  Future<void> execute(RepositoryEntity repository) async =>
      _favoriteRepository.removeFromFavorite(repository);
}
