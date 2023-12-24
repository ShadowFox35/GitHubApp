// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RepositoryModelAdapter extends TypeAdapter<RepositoryModel> {
  @override
  final int typeId = 0;

  @override
  RepositoryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RepositoryModel(
      name: fields[0] as String?,
      id: fields[1] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, RepositoryModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RepositoryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryModelImpl _$$RepositoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RepositoryModelImpl(
      name: json['name'] as String? ?? '',
      id: json['id'] as int? ?? 0,
    );

Map<String, dynamic> _$$RepositoryModelImplToJson(
        _$RepositoryModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };
