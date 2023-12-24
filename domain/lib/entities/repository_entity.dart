import 'package:equatable/equatable.dart';

class RepositoryEntity extends Equatable {
  final String name;

  const RepositoryEntity({
    required this.name,
  });

  @override
  List<Object?> get props => [name];
}
