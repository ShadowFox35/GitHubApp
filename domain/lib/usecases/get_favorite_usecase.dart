import 'package:domain/domain.dart';

class GetFavoriteUseCase
    implements AsyncUseCase<NoParams, List<RepositoryEntity>> {
  final FavoriteRepository _favoriteRepository;

  const GetFavoriteUseCase({
    required FavoriteRepository favoriteRepository,
  }) : _favoriteRepository = favoriteRepository;

  @override
  Future<List<RepositoryEntity>> execute(NoParams input) async {
    return await _favoriteRepository.getFavoritesfromStorage();
  }
}
