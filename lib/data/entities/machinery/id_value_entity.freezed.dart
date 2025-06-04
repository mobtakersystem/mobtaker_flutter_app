// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'id_value_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IdValueEntity _$IdValueEntityFromJson(Map<String, dynamic> json) {
  return _IdValueEntity.fromJson(json);
}

/// @nodoc
mixin _$IdValueEntity {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// Serializes this IdValueEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IdValueEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdValueEntityCopyWith<IdValueEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdValueEntityCopyWith<$Res> {
  factory $IdValueEntityCopyWith(
          IdValueEntity value, $Res Function(IdValueEntity) then) =
      _$IdValueEntityCopyWithImpl<$Res, IdValueEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id, @JsonKey(name: 'title') String title});
}

/// @nodoc
class _$IdValueEntityCopyWithImpl<$Res, $Val extends IdValueEntity>
    implements $IdValueEntityCopyWith<$Res> {
  _$IdValueEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IdValueEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdValueEntityImplCopyWith<$Res>
    implements $IdValueEntityCopyWith<$Res> {
  factory _$$IdValueEntityImplCopyWith(
          _$IdValueEntityImpl value, $Res Function(_$IdValueEntityImpl) then) =
      __$$IdValueEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id, @JsonKey(name: 'title') String title});
}

/// @nodoc
class __$$IdValueEntityImplCopyWithImpl<$Res>
    extends _$IdValueEntityCopyWithImpl<$Res, _$IdValueEntityImpl>
    implements _$$IdValueEntityImplCopyWith<$Res> {
  __$$IdValueEntityImplCopyWithImpl(
      _$IdValueEntityImpl _value, $Res Function(_$IdValueEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdValueEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$IdValueEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdValueEntityImpl implements _IdValueEntity {
  const _$IdValueEntityImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') this.title = ""});

  factory _$IdValueEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdValueEntityImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;

  @override
  String toString() {
    return 'IdValueEntity(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdValueEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of IdValueEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdValueEntityImplCopyWith<_$IdValueEntityImpl> get copyWith =>
      __$$IdValueEntityImplCopyWithImpl<_$IdValueEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdValueEntityImplToJson(
      this,
    );
  }
}

abstract class _IdValueEntity implements IdValueEntity {
  const factory _IdValueEntity(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'title') final String title}) = _$IdValueEntityImpl;

  factory _IdValueEntity.fromJson(Map<String, dynamic> json) =
      _$IdValueEntityImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String get title;

  /// Create a copy of IdValueEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdValueEntityImplCopyWith<_$IdValueEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
