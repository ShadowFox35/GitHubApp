import 'package:data/data.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveProvider {
  late final Box<RepositoryModel> _favoriteBox;
  late final Box<RepositoryModel> _historyBox;

  Future<void> initHive() async {
    await Hive.initFlutter();
    Hive.registerAdapter(RepositoryModelAdapter());
    _favoriteBox = await Hive.openBox(_HiveKeys.favorites);
    _historyBox = await Hive.openBox(_HiveKeys.history);
  }

  List<RepositoryModel> getFavorites() {
    final list = _favoriteBox.values.toList();
    return list;
  }

  Future<void> saveFavorite(RepositoryModel repository) async {
    await _favoriteBox.put(repository.id, repository);
  }

  Future<void> removeFavorite(RepositoryModel repository) async {
    await _favoriteBox.delete(repository.id);
  }

  Future<void> saveRepositories(List<RepositoryModel> list) async {
    await _historyBox.clear();
    for (int i = 0; i < list.length; i++) {
      await _historyBox.put(i, list[i]);
    }
  }

  List<RepositoryModel> getRepositories() => _historyBox.values.toList();
}

class _HiveKeys {
  static const String favorites = 'favorites';
  static const String history = 'history';
}
