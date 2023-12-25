import 'package:domain/domain.dart';

abstract class FavoriteRepository {
  Future<List<RepositoryEntity>> getFavoritesfromStorage();
  Future<void> addToFavorite(RepositoryEntity repository);
  Future<void> removeFromFavorite(RepositoryEntity repository);
}
