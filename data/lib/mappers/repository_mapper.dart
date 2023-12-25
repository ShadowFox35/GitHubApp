import 'package:data/data.dart';
import 'package:domain/domain.dart';

class RepositoryMapper {
  static RepositoryModel toModel(RepositoryEntity entity) {
    return RepositoryModel(
        name: entity.name, id: entity.id, isFavorite: entity.isFavorite);
  }

  static RepositoryEntity toEntity(RepositoryModel model) {
    return RepositoryEntity(
      name: model.name ?? '',
      id: model.id ?? 0,
      isFavorite: model.isFavorite ?? false,
    );
  }
}
