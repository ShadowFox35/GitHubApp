import 'package:data/data.dart';
import 'package:data/mappers/repository_mapper.dart';
import 'package:domain/domain.dart';

class SearchRepositoryImpl implements SearchRepository {
  final GitHubProvider _githubProvider;
  final HiveProvider _hiveProvider;

  SearchRepositoryImpl({
    required GitHubProvider githubProvider,
    required HiveProvider hiveProvider,
  })  : _githubProvider = githubProvider,
        _hiveProvider = hiveProvider;

  @override
  Future<List<RepositoryEntity>> findRepositories(
      {required SearchEntity data}) async {
    final List<RepositoryEntity> result = await _findRepositories(data);
    return result;
  }

  Future<List<RepositoryEntity>> _findRepositories(SearchEntity data) async {
    final List<RepositoryModel> list =
        await _githubProvider.fetchRepositories(data);
    final result =
        list.map((RepositoryModel e) => RepositoryMapper.toEntity(e)).toList();
    return result;
  }

  @override
  Future<void> saveRepositoriesList(List<RepositoryEntity> list) async {
    _hiveProvider.saveRepositories(
        list.map((RepositoryEntity e) => RepositoryMapper.toModel(e)).toList());
  }

  @override
  Future<List<RepositoryEntity>> getRepositoriesList() async {
    final List<RepositoryModel> list = await _hiveProvider.getRepositories();
    final result =
        list.map((RepositoryModel e) => RepositoryMapper.toEntity(e)).toList();
    return result;
  }
}
