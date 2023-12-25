import 'package:domain/domain.dart';

class SearchRepositoriesUseCase
    implements AsyncUseCase<SearchEntity, List<RepositoryEntity>> {
  final SearchRepository _searchRepository;

  const SearchRepositoriesUseCase({
    required SearchRepository searchRepository,
  }) : _searchRepository = searchRepository;

  @override
  Future<List<RepositoryEntity>> execute(SearchEntity input) async {
    return await _searchRepository.findRepositories(data: input);
  }
}
