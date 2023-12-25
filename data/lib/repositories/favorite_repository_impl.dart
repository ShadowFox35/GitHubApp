import 'package:data/data.dart';
import 'package:data/mappers/repository_mapper.dart';
import 'package:domain/domain.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  final HiveProvider _hiveProvider;

  FavoriteRepositoryImpl({
    required HiveProvider hiveProvider,
  }) : _hiveProvider = hiveProvider;

  @override
  Future<List<RepositoryEntity>> getFavoritesfromStorage() async {
    final List<RepositoryModel> list = await _hiveProvider.getFavorites();
    final result =
        list.map((RepositoryModel e) => RepositoryMapper.toEntity(e)).toList();
    return result;
  }

  @override
  Future<void> addToFavorite(RepositoryEntity repository) async {
    _hiveProvider.saveFavorite(
      RepositoryMapper.toModel(
        RepositoryEntity(
          name: repository.name,
          id: repository.id,
          isFavorite: true,
        ),
      ),
    );
  }

  @override
  Future<void> removeFromFavorite(RepositoryEntity repository) async {
    _hiveProvider.removeFavorite(
      RepositoryMapper.toModel(repository),
    );
  }
}
