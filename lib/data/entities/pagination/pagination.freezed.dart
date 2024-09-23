// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginationEntity<T> _$PaginationEntityFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PaginationEntity<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PaginationEntity<T> {
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int get lastPage => throw _privateConstructorUsedError;
  List<T> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationEntityCopyWith<T, PaginationEntity<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationEntityCopyWith<T, $Res> {
  factory $PaginationEntityCopyWith(
          PaginationEntity<T> value, $Res Function(PaginationEntity<T>) then) =
      _$PaginationEntityCopyWithImpl<T, $Res, PaginationEntity<T>>;
  @useResult
  $Res call(
      {int total,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'last_page') int lastPage,
      List<T> data});
}

/// @nodoc
class _$PaginationEntityCopyWithImpl<T, $Res, $Val extends PaginationEntity<T>>
    implements $PaginationEntityCopyWith<T, $Res> {
  _$PaginationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? perPage = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationEntityImplCopyWith<T, $Res>
    implements $PaginationEntityCopyWith<T, $Res> {
  factory _$$PaginationEntityImplCopyWith(_$PaginationEntityImpl<T> value,
          $Res Function(_$PaginationEntityImpl<T>) then) =
      __$$PaginationEntityImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int total,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'last_page') int lastPage,
      List<T> data});
}

/// @nodoc
class __$$PaginationEntityImplCopyWithImpl<T, $Res>
    extends _$PaginationEntityCopyWithImpl<T, $Res, _$PaginationEntityImpl<T>>
    implements _$$PaginationEntityImplCopyWith<T, $Res> {
  __$$PaginationEntityImplCopyWithImpl(_$PaginationEntityImpl<T> _value,
      $Res Function(_$PaginationEntityImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? perPage = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? data = null,
  }) {
    return _then(_$PaginationEntityImpl<T>(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$PaginationEntityImpl<T> implements _PaginationEntity<T> {
  const _$PaginationEntityImpl(
      {required this.total,
      @JsonKey(name: 'per_page') required this.perPage,
      @JsonKey(name: 'current_page') required this.currentPage,
      @JsonKey(name: 'last_page') required this.lastPage,
      required final List<T> data})
      : _data = data;

  factory _$PaginationEntityImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PaginationEntityImplFromJson(json, fromJsonT);

  @override
  final int total;
  @override
  @JsonKey(name: 'per_page')
  final int perPage;
  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  @override
  @JsonKey(name: 'last_page')
  final int lastPage;
  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PaginationEntity<$T>(total: $total, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationEntityImpl<T> &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, perPage, currentPage,
      lastPage, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationEntityImplCopyWith<T, _$PaginationEntityImpl<T>> get copyWith =>
      __$$PaginationEntityImplCopyWithImpl<T, _$PaginationEntityImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PaginationEntityImplToJson<T>(this, toJsonT);
  }
}

abstract class _PaginationEntity<T> implements PaginationEntity<T> {
  const factory _PaginationEntity(
      {required final int total,
      @JsonKey(name: 'per_page') required final int perPage,
      @JsonKey(name: 'current_page') required final int currentPage,
      @JsonKey(name: 'last_page') required final int lastPage,
      required final List<T> data}) = _$PaginationEntityImpl<T>;

  factory _PaginationEntity.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PaginationEntityImpl<T>.fromJson;

  @override
  int get total;
  @override
  @JsonKey(name: 'per_page')
  int get perPage;
  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  @JsonKey(name: 'last_page')
  int get lastPage;
  @override
  List<T> get data;
  @override
  @JsonKey(ignore: true)
  _$$PaginationEntityImplCopyWith<T, _$PaginationEntityImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
