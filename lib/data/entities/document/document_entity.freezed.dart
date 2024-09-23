// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DocumentEntity _$DocumentEntityFromJson(Map<String, dynamic> json) {
  return _DocumentEntity.fromJson(json);
}

/// @nodoc
mixin _$DocumentEntity {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'documentable_type')
  String? get documentableType => throw _privateConstructorUsedError;
  @JsonKey(name: 'documentable_id')
  String? get documentableId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mime_type')
  String? get mimeType => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @DateJsonParser()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  String? get user => throw _privateConstructorUsedError; //local fields
  String? get path => throw _privateConstructorUsedError;
  String? get preSignedName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentEntityCopyWith<DocumentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentEntityCopyWith<$Res> {
  factory $DocumentEntityCopyWith(
          DocumentEntity value, $Res Function(DocumentEntity) then) =
      _$DocumentEntityCopyWithImpl<$Res, DocumentEntity>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'documentable_type') String? documentableType,
      @JsonKey(name: 'documentable_id') String? documentableId,
      @JsonKey(name: 'mime_type') String? mimeType,
      @JsonKey(name: 'created_at') @DateJsonParser() DateTime? createdAt,
      @JsonKey(name: 'user') String? user,
      String? path,
      String? preSignedName});
}

/// @nodoc
class _$DocumentEntityCopyWithImpl<$Res, $Val extends DocumentEntity>
    implements $DocumentEntityCopyWith<$Res> {
  _$DocumentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? documentableType = freezed,
    Object? documentableId = freezed,
    Object? mimeType = freezed,
    Object? createdAt = freezed,
    Object? user = freezed,
    Object? path = freezed,
    Object? preSignedName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      documentableType: freezed == documentableType
          ? _value.documentableType
          : documentableType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentableId: freezed == documentableId
          ? _value.documentableId
          : documentableId // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      preSignedName: freezed == preSignedName
          ? _value.preSignedName
          : preSignedName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentEntityImplCopyWith<$Res>
    implements $DocumentEntityCopyWith<$Res> {
  factory _$$DocumentEntityImplCopyWith(_$DocumentEntityImpl value,
          $Res Function(_$DocumentEntityImpl) then) =
      __$$DocumentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'documentable_type') String? documentableType,
      @JsonKey(name: 'documentable_id') String? documentableId,
      @JsonKey(name: 'mime_type') String? mimeType,
      @JsonKey(name: 'created_at') @DateJsonParser() DateTime? createdAt,
      @JsonKey(name: 'user') String? user,
      String? path,
      String? preSignedName});
}

/// @nodoc
class __$$DocumentEntityImplCopyWithImpl<$Res>
    extends _$DocumentEntityCopyWithImpl<$Res, _$DocumentEntityImpl>
    implements _$$DocumentEntityImplCopyWith<$Res> {
  __$$DocumentEntityImplCopyWithImpl(
      _$DocumentEntityImpl _value, $Res Function(_$DocumentEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? documentableType = freezed,
    Object? documentableId = freezed,
    Object? mimeType = freezed,
    Object? createdAt = freezed,
    Object? user = freezed,
    Object? path = freezed,
    Object? preSignedName = freezed,
  }) {
    return _then(_$DocumentEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      documentableType: freezed == documentableType
          ? _value.documentableType
          : documentableType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentableId: freezed == documentableId
          ? _value.documentableId
          : documentableId // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      preSignedName: freezed == preSignedName
          ? _value.preSignedName
          : preSignedName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentEntityImpl implements _DocumentEntity {
  const _$DocumentEntityImpl(
      {required this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'documentable_type') this.documentableType,
      @JsonKey(name: 'documentable_id') this.documentableId,
      @JsonKey(name: 'mime_type') this.mimeType,
      @JsonKey(name: 'created_at') @DateJsonParser() this.createdAt,
      @JsonKey(name: 'user') this.user,
      this.path,
      this.preSignedName});

  factory _$DocumentEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentEntityImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'documentable_type')
  final String? documentableType;
  @override
  @JsonKey(name: 'documentable_id')
  final String? documentableId;
  @override
  @JsonKey(name: 'mime_type')
  final String? mimeType;
  @override
  @JsonKey(name: 'created_at')
  @DateJsonParser()
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'user')
  final String? user;
//local fields
  @override
  final String? path;
  @override
  final String? preSignedName;

  @override
  String toString() {
    return 'DocumentEntity(id: $id, title: $title, documentableType: $documentableType, documentableId: $documentableId, mimeType: $mimeType, createdAt: $createdAt, user: $user, path: $path, preSignedName: $preSignedName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.documentableType, documentableType) ||
                other.documentableType == documentableType) &&
            (identical(other.documentableId, documentableId) ||
                other.documentableId == documentableId) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.preSignedName, preSignedName) ||
                other.preSignedName == preSignedName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, documentableType,
      documentableId, mimeType, createdAt, user, path, preSignedName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentEntityImplCopyWith<_$DocumentEntityImpl> get copyWith =>
      __$$DocumentEntityImplCopyWithImpl<_$DocumentEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentEntityImplToJson(
      this,
    );
  }
}

abstract class _DocumentEntity implements DocumentEntity {
  const factory _DocumentEntity(
      {required final String id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'documentable_type') final String? documentableType,
      @JsonKey(name: 'documentable_id') final String? documentableId,
      @JsonKey(name: 'mime_type') final String? mimeType,
      @JsonKey(name: 'created_at') @DateJsonParser() final DateTime? createdAt,
      @JsonKey(name: 'user') final String? user,
      final String? path,
      final String? preSignedName}) = _$DocumentEntityImpl;

  factory _DocumentEntity.fromJson(Map<String, dynamic> json) =
      _$DocumentEntityImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'documentable_type')
  String? get documentableType;
  @override
  @JsonKey(name: 'documentable_id')
  String? get documentableId;
  @override
  @JsonKey(name: 'mime_type')
  String? get mimeType;
  @override
  @JsonKey(name: 'created_at')
  @DateJsonParser()
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'user')
  String? get user;
  @override //local fields
  String? get path;
  @override
  String? get preSignedName;
  @override
  @JsonKey(ignore: true)
  _$$DocumentEntityImplCopyWith<_$DocumentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
