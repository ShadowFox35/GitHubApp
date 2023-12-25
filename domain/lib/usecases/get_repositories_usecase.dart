import 'package:domain/domain.dart';

class GetRepositoriesUseCase
    implements AsyncUseCase<NoParams, List<RepositoryEntity>> {
  final SearchRepository _searchRepository;

  const GetRepositoriesUseCase({
    required SearchRepository searchRepository,
  }) : _searchRepository = searchRepository;

  @override
  Future<List<RepositoryEntity>> execute(NoParams input) async =>
      _searchRepository.getRepositoriesList();
}
