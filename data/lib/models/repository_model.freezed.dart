// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepositoryModel _$RepositoryModelFromJson(Map<String, dynamic> json) {
  return _RepositoryModel.fromJson(json);
}

/// @nodoc
mixin _$RepositoryModel {
  @HiveField(0)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(2)
  bool? get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryModelCopyWith<RepositoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryModelCopyWith<$Res> {
  factory $RepositoryModelCopyWith(
          RepositoryModel value, $Res Function(RepositoryModel) then) =
      _$RepositoryModelCopyWithImpl<$Res, RepositoryModel>;
  @useResult
  $Res call(
      {@HiveField(0) String? name,
      @HiveField(1) int? id,
      @HiveField(2) bool? isFavorite});
}

/// @nodoc
class _$RepositoryModelCopyWithImpl<$Res, $Val extends RepositoryModel>
    implements $RepositoryModelCopyWith<$Res> {
  _$RepositoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositoryModelImplCopyWith<$Res>
    implements $RepositoryModelCopyWith<$Res> {
  factory _$$RepositoryModelImplCopyWith(_$RepositoryModelImpl value,
          $Res Function(_$RepositoryModelImpl) then) =
      __$$RepositoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? name,
      @HiveField(1) int? id,
      @HiveField(2) bool? isFavorite});
}

/// @nodoc
class __$$RepositoryModelImplCopyWithImpl<$Res>
    extends _$RepositoryModelCopyWithImpl<$Res, _$RepositoryModelImpl>
    implements _$$RepositoryModelImplCopyWith<$Res> {
  __$$RepositoryModelImplCopyWithImpl(
      _$RepositoryModelImpl _value, $Res Function(_$RepositoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_$RepositoryModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$RepositoryModelImpl implements _RepositoryModel {
  _$RepositoryModelImpl(
      {@HiveField(0) this.name = '',
      @HiveField(1) this.id = 0,
      @HiveField(2) this.isFavorite = false});

  factory _$RepositoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryModelImplFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final String? name;
  @override
  @JsonKey()
  @HiveField(1)
  final int? id;
  @override
  @JsonKey()
  @HiveField(2)
  final bool? isFavorite;

  @override
  String toString() {
    return 'RepositoryModel(name: $name, id: $id, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryModelImplCopyWith<_$RepositoryModelImpl> get copyWith =>
      __$$RepositoryModelImplCopyWithImpl<_$RepositoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryModelImplToJson(
      this,
    );
  }
}

abstract class _RepositoryModel implements RepositoryModel {
  factory _RepositoryModel(
      {@HiveField(0) final String? name,
      @HiveField(1) final int? id,
      @HiveField(2) final bool? isFavorite}) = _$RepositoryModelImpl;

  factory _RepositoryModel.fromJson(Map<String, dynamic> json) =
      _$RepositoryModelImpl.fromJson;

  @override
  @HiveField(0)
  String? get name;
  @override
  @HiveField(1)
  int? get id;
  @override
  @HiveField(2)
  bool? get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$RepositoryModelImplCopyWith<_$RepositoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
