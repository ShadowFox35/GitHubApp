import 'package:data/data.dart';

class GitHubProvider {
  GitHubProvider({required this.dio});
  final Dio dio;
  final baseUrl = 'https://api.github.com/search/repositories?q=Q';

  Future<List<RepositoryModel>> fetchRepositories(data) async {
    final response = await dio.get(
      baseUrl,
      queryParameters: {'q': data.name, 'per_page': 15},
    );

    final a = response.data["items"];
    late final List<RepositoryModel> repositories = [];
    a.forEach((element) {
      repositories.add(
        RepositoryModel(name: element["full_name"]),
      );
    });
    return repositories;
  }
}
