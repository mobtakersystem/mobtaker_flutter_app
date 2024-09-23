import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';

part 'pagination.g.dart';

@Freezed(genericArgumentFactories: true)
class PaginationEntity<T> with _$PaginationEntity<T> {
  const factory PaginationEntity({
    required int total,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'last_page') required int lastPage,
    required List<T> data,
  }) = _PaginationEntity<T>;

  factory PaginationEntity.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$PaginationEntityFromJson(json, fromJsonT);
}
