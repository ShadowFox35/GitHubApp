import 'package:domain/domain.dart';

abstract class SearchRepository {
  Future<List<RepositoryEntity>> findRepositories({
    required SearchEntity data,
  });
  Stream<List<RepositoryEntity>> observeRepositories();
}
