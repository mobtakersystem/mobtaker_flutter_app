// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectEntity _$ProjectEntityFromJson(Map<String, dynamic> json) {
  return _ProjectEntity.fromJson(json);
}

/// @nodoc
mixin _$ProjectEntity {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String? get parentId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: '_lft')
  int? get lft => throw _privateConstructorUsedError;
  @JsonKey(name: '_rgt')
  int? get rgt => throw _privateConstructorUsedError;
  int? get depth => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  @GenericDateJsonParserToMilliSec()
  DateTime? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  @GenericDateJsonParserToMilliSec()
  DateTime? get endDate => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'percent_of_whole')
  int get percentOfWhole => throw _privateConstructorUsedError;
  int? get budget => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get step => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get performance => throw _privateConstructorUsedError;
  int? get performanceOfWhole => throw _privateConstructorUsedError;
  List<ProjectEntity> get children => throw _privateConstructorUsedError;
  Map<String, dynamic>? get pivot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectEntityCopyWith<ProjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEntityCopyWith<$Res> {
  factory $ProjectEntityCopyWith(
          ProjectEntity value, $Res Function(ProjectEntity) then) =
      _$ProjectEntityCopyWithImpl<$Res, ProjectEntity>;
  @useResult
  $Res call(
      {String id,
      String type,
      @JsonKey(name: 'parent_id') String? parentId,
      String title,
      @JsonKey(name: '_lft') int? lft,
      @JsonKey(name: '_rgt') int? rgt,
      int? depth,
      @JsonKey(name: 'start_date')
      @GenericDateJsonParserToMilliSec()
      DateTime? startDate,
      @JsonKey(name: 'end_date')
      @GenericDateJsonParserToMilliSec()
      DateTime? endDate,
      String code,
      @JsonKey(name: 'percent_of_whole') int percentOfWhole,
      int? budget,
      int? quantity,
      String? description,
      String status,
      String? step,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? updatedAt,
      int? performance,
      int? performanceOfWhole,
      List<ProjectEntity> children,
      Map<String, dynamic>? pivot});
}

/// @nodoc
class _$ProjectEntityCopyWithImpl<$Res, $Val extends ProjectEntity>
    implements $ProjectEntityCopyWith<$Res> {
  _$ProjectEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? parentId = freezed,
    Object? title = null,
    Object? lft = freezed,
    Object? rgt = freezed,
    Object? depth = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? code = null,
    Object? percentOfWhole = null,
    Object? budget = freezed,
    Object? quantity = freezed,
    Object? description = freezed,
    Object? status = null,
    Object? step = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? performance = freezed,
    Object? performanceOfWhole = freezed,
    Object? children = null,
    Object? pivot = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      lft: freezed == lft
          ? _value.lft
          : lft // ignore: cast_nullable_to_non_nullable
              as int?,
      rgt: freezed == rgt
          ? _value.rgt
          : rgt // ignore: cast_nullable_to_non_nullable
              as int?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      percentOfWhole: null == percentOfWhole
          ? _value.percentOfWhole
          : percentOfWhole // ignore: cast_nullable_to_non_nullable
              as int,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      step: freezed == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      performance: freezed == performance
          ? _value.performance
          : performance // ignore: cast_nullable_to_non_nullable
              as int?,
      performanceOfWhole: freezed == performanceOfWhole
          ? _value.performanceOfWhole
          : performanceOfWhole // ignore: cast_nullable_to_non_nullable
              as int?,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
      pivot: freezed == pivot
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectEntityImplCopyWith<$Res>
    implements $ProjectEntityCopyWith<$Res> {
  factory _$$ProjectEntityImplCopyWith(
          _$ProjectEntityImpl value, $Res Function(_$ProjectEntityImpl) then) =
      __$$ProjectEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      @JsonKey(name: 'parent_id') String? parentId,
      String title,
      @JsonKey(name: '_lft') int? lft,
      @JsonKey(name: '_rgt') int? rgt,
      int? depth,
      @JsonKey(name: 'start_date')
      @GenericDateJsonParserToMilliSec()
      DateTime? startDate,
      @JsonKey(name: 'end_date')
      @GenericDateJsonParserToMilliSec()
      DateTime? endDate,
      String code,
      @JsonKey(name: 'percent_of_whole') int percentOfWhole,
      int? budget,
      int? quantity,
      String? description,
      String status,
      String? step,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? updatedAt,
      int? performance,
      int? performanceOfWhole,
      List<ProjectEntity> children,
      Map<String, dynamic>? pivot});
}

/// @nodoc
class __$$ProjectEntityImplCopyWithImpl<$Res>
    extends _$ProjectEntityCopyWithImpl<$Res, _$ProjectEntityImpl>
    implements _$$ProjectEntityImplCopyWith<$Res> {
  __$$ProjectEntityImplCopyWithImpl(
      _$ProjectEntityImpl _value, $Res Function(_$ProjectEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? parentId = freezed,
    Object? title = null,
    Object? lft = freezed,
    Object? rgt = freezed,
    Object? depth = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? code = null,
    Object? percentOfWhole = null,
    Object? budget = freezed,
    Object? quantity = freezed,
    Object? description = freezed,
    Object? status = null,
    Object? step = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? performance = freezed,
    Object? performanceOfWhole = freezed,
    Object? children = null,
    Object? pivot = freezed,
  }) {
    return _then(_$ProjectEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      lft: freezed == lft
          ? _value.lft
          : lft // ignore: cast_nullable_to_non_nullable
              as int?,
      rgt: freezed == rgt
          ? _value.rgt
          : rgt // ignore: cast_nullable_to_non_nullable
              as int?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      percentOfWhole: null == percentOfWhole
          ? _value.percentOfWhole
          : percentOfWhole // ignore: cast_nullable_to_non_nullable
              as int,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      step: freezed == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      performance: freezed == performance
          ? _value.performance
          : performance // ignore: cast_nullable_to_non_nullable
              as int?,
      performanceOfWhole: freezed == performanceOfWhole
          ? _value.performanceOfWhole
          : performanceOfWhole // ignore: cast_nullable_to_non_nullable
              as int?,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
      pivot: freezed == pivot
          ? _value._pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProjectEntityImpl implements _ProjectEntity {
  const _$ProjectEntityImpl(
      {required this.id,
      required this.type,
      @JsonKey(name: 'parent_id') this.parentId,
      this.title = "",
      @JsonKey(name: '_lft') this.lft,
      @JsonKey(name: '_rgt') this.rgt,
      this.depth,
      @JsonKey(name: 'start_date')
      @GenericDateJsonParserToMilliSec()
      this.startDate,
      @JsonKey(name: 'end_date')
      @GenericDateJsonParserToMilliSec()
      this.endDate,
      this.code = "",
      @JsonKey(name: 'percent_of_whole') this.percentOfWhole = 0,
      this.budget,
      this.quantity,
      this.description,
      required this.status,
      this.step,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      this.createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      this.updatedAt,
      this.performance,
      this.performanceOfWhole,
      required final List<ProjectEntity> children,
      final Map<String, dynamic>? pivot})
      : _children = children,
        _pivot = pivot;

  factory _$ProjectEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  @JsonKey(name: 'parent_id')
  final String? parentId;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey(name: '_lft')
  final int? lft;
  @override
  @JsonKey(name: '_rgt')
  final int? rgt;
  @override
  final int? depth;
  @override
  @JsonKey(name: 'start_date')
  @GenericDateJsonParserToMilliSec()
  final DateTime? startDate;
  @override
  @JsonKey(name: 'end_date')
  @GenericDateJsonParserToMilliSec()
  final DateTime? endDate;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey(name: 'percent_of_whole')
  final int percentOfWhole;
  @override
  final int? budget;
  @override
  final int? quantity;
  @override
  final String? description;
  @override
  final String status;
  @override
  final String? step;
  @override
  @JsonKey(name: 'created_at')
  @GenericDateJsonParserToMilliSec()
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @GenericDateJsonParserToMilliSec()
  final DateTime? updatedAt;
  @override
  final int? performance;
  @override
  final int? performanceOfWhole;
  final List<ProjectEntity> _children;
  @override
  List<ProjectEntity> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  final Map<String, dynamic>? _pivot;
  @override
  Map<String, dynamic>? get pivot {
    final value = _pivot;
    if (value == null) return null;
    if (_pivot is EqualUnmodifiableMapView) return _pivot;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ProjectEntity(id: $id, type: $type, parentId: $parentId, title: $title, lft: $lft, rgt: $rgt, depth: $depth, startDate: $startDate, endDate: $endDate, code: $code, percentOfWhole: $percentOfWhole, budget: $budget, quantity: $quantity, description: $description, status: $status, step: $step, createdAt: $createdAt, updatedAt: $updatedAt, performance: $performance, performanceOfWhole: $performanceOfWhole, children: $children, pivot: $pivot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.lft, lft) || other.lft == lft) &&
            (identical(other.rgt, rgt) || other.rgt == rgt) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.percentOfWhole, percentOfWhole) ||
                other.percentOfWhole == percentOfWhole) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.performance, performance) ||
                other.performance == performance) &&
            (identical(other.performanceOfWhole, performanceOfWhole) ||
                other.performanceOfWhole == performanceOfWhole) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            const DeepCollectionEquality().equals(other._pivot, _pivot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        type,
        parentId,
        title,
        lft,
        rgt,
        depth,
        startDate,
        endDate,
        code,
        percentOfWhole,
        budget,
        quantity,
        description,
        status,
        step,
        createdAt,
        updatedAt,
        performance,
        performanceOfWhole,
        const DeepCollectionEquality().hash(_children),
        const DeepCollectionEquality().hash(_pivot)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectEntityImplCopyWith<_$ProjectEntityImpl> get copyWith =>
      __$$ProjectEntityImplCopyWithImpl<_$ProjectEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectEntityImplToJson(
      this,
    );
  }
}

abstract class _ProjectEntity implements ProjectEntity {
  const factory _ProjectEntity(
      {required final String id,
      required final String type,
      @JsonKey(name: 'parent_id') final String? parentId,
      final String title,
      @JsonKey(name: '_lft') final int? lft,
      @JsonKey(name: '_rgt') final int? rgt,
      final int? depth,
      @JsonKey(name: 'start_date')
      @GenericDateJsonParserToMilliSec()
      final DateTime? startDate,
      @JsonKey(name: 'end_date')
      @GenericDateJsonParserToMilliSec()
      final DateTime? endDate,
      final String code,
      @JsonKey(name: 'percent_of_whole') final int percentOfWhole,
      final int? budget,
      final int? quantity,
      final String? description,
      required final String status,
      final String? step,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      final DateTime? updatedAt,
      final int? performance,
      final int? performanceOfWhole,
      required final List<ProjectEntity> children,
      final Map<String, dynamic>? pivot}) = _$ProjectEntityImpl;

  factory _ProjectEntity.fromJson(Map<String, dynamic> json) =
      _$ProjectEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  @JsonKey(name: 'parent_id')
  String? get parentId;
  @override
  String get title;
  @override
  @JsonKey(name: '_lft')
  int? get lft;
  @override
  @JsonKey(name: '_rgt')
  int? get rgt;
  @override
  int? get depth;
  @override
  @JsonKey(name: 'start_date')
  @GenericDateJsonParserToMilliSec()
  DateTime? get startDate;
  @override
  @JsonKey(name: 'end_date')
  @GenericDateJsonParserToMilliSec()
  DateTime? get endDate;
  @override
  String get code;
  @override
  @JsonKey(name: 'percent_of_whole')
  int get percentOfWhole;
  @override
  int? get budget;
  @override
  int? get quantity;
  @override
  String? get description;
  @override
  String get status;
  @override
  String? get step;
  @override
  @JsonKey(name: 'created_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get updatedAt;
  @override
  int? get performance;
  @override
  int? get performanceOfWhole;
  @override
  List<ProjectEntity> get children;
  @override
  Map<String, dynamic>? get pivot;
  @override
  @JsonKey(ignore: true)
  _$$ProjectEntityImplCopyWith<_$ProjectEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
