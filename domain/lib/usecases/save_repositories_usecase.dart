import 'package:domain/domain.dart';

class SaveRepositoriesUseCase implements UseCase<List<RepositoryEntity>, void> {
  final SearchRepository _searchRepository;

  const SaveRepositoriesUseCase({
    required SearchRepository searchRepository,
  }) : _searchRepository = searchRepository;

  @override
  Future<void> execute(List<RepositoryEntity> list) async =>
      _searchRepository.saveRepositoriesList(list);
}
