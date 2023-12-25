import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'repository_model.freezed.dart';
part 'repository_model.g.dart';

@freezed
@HiveType(typeId: 0)
class RepositoryModel with _$RepositoryModel {
  @JsonSerializable(explicitToJson: true)
  factory RepositoryModel({
    @Default('') @HiveField(0) String? name,
    @Default(0) @HiveField(1) int? id,
    @Default(false) @HiveField(2) bool? isFavorite,
  }) = _RepositoryModel;

  factory RepositoryModel.fromJson(Map<String, dynamic> json) =>
      _$RepositoryModelFromJson(json);
}
