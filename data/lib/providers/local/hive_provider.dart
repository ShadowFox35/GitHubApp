import 'package:data/data.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveProvider {
  late final Box<RepositoryModel> _favoriteBox;

  Future<void> initHive() async {
    await Hive.initFlutter();
    Hive.registerAdapter(RepositoryModelAdapter());
    _favoriteBox = await Hive.openBox(_HiveKeys.favorites);
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
}

class _HiveKeys {
  static const String favorites = 'favorites';
}
