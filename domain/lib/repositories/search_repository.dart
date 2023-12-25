import 'package:domain/domain.dart';

abstract class SearchRepository {
  Future<List<RepositoryEntity>> findRepositories({
    required SearchEntity data,
  });
  Future<void> saveRepositoriesList(List<RepositoryEntity> list);
  Future<List<RepositoryEntity>> getRepositoriesList();
}
