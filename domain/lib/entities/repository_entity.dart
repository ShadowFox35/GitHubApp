import 'package:equatable/equatable.dart';

class RepositoryEntity extends Equatable {
  final String name;
  final int id;
  final bool isFavorite;

  const RepositoryEntity({
    required this.name,
    required this.id,
    required this.isFavorite,
  });

  @override
  List<Object?> get props => [name, id, isFavorite];
}
