import 'package:domain/domain.dart';

class AddFavoriteUseCase implements UseCase<RepositoryEntity, void> {
  final FavoriteRepository _favoriteRepository;

  const AddFavoriteUseCase({
    required FavoriteRepository favoriteRepository,
  }) : _favoriteRepository = favoriteRepository;

  @override
  Future<void> execute(RepositoryEntity repository) async =>
      _favoriteRepository.addToFavorite(repository);
}
