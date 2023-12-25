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

    late final List<RepositoryModel> repositories = [];
    response.data["items"].forEach((element) {
      repositories.add(
        RepositoryModel(name: element["full_name"], id: element["id"]),
      );
    });
    return repositories;
  }
}
