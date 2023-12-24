import 'package:data/data.dart';
import 'package:domain/domain.dart';

class RepositoryMapper {
  static RepositoryModel toModel(RepositoryEntity entity) {
    return RepositoryModel(
      name: entity.name,
    );
  }

  static RepositoryEntity toEntity(RepositoryModel model) {
    return RepositoryEntity(
      name: model.name ?? '',
    );
  }
}
