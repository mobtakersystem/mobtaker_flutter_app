// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stop_chart_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StopChartEntity _$StopChartEntityFromJson(Map<String, dynamic> json) {
  return _StopChartEntity.fromJson(json);
}

/// @nodoc
mixin _$StopChartEntity {
  @JsonKey(name: 'stop_charts')
  List<StopCharts>? get stopCharts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StopChartEntityCopyWith<StopChartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StopChartEntityCopyWith<$Res> {
  factory $StopChartEntityCopyWith(
          StopChartEntity value, $Res Function(StopChartEntity) then) =
      _$StopChartEntityCopyWithImpl<$Res, StopChartEntity>;
  @useResult
  $Res call({@JsonKey(name: 'stop_charts') List<StopCharts>? stopCharts});
}

/// @nodoc
class _$StopChartEntityCopyWithImpl<$Res, $Val extends StopChartEntity>
    implements $StopChartEntityCopyWith<$Res> {
  _$StopChartEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stopCharts = freezed,
  }) {
    return _then(_value.copyWith(
      stopCharts: freezed == stopCharts
          ? _value.stopCharts
          : stopCharts // ignore: cast_nullable_to_non_nullable
              as List<StopCharts>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StopChartEntityImplCopyWith<$Res>
    implements $StopChartEntityCopyWith<$Res> {
  factory _$$StopChartEntityImplCopyWith(_$StopChartEntityImpl value,
          $Res Function(_$StopChartEntityImpl) then) =
      __$$StopChartEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'stop_charts') List<StopCharts>? stopCharts});
}

/// @nodoc
class __$$StopChartEntityImplCopyWithImpl<$Res>
    extends _$StopChartEntityCopyWithImpl<$Res, _$StopChartEntityImpl>
    implements _$$StopChartEntityImplCopyWith<$Res> {
  __$$StopChartEntityImplCopyWithImpl(
      _$StopChartEntityImpl _value, $Res Function(_$StopChartEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stopCharts = freezed,
  }) {
    return _then(_$StopChartEntityImpl(
      stopCharts: freezed == stopCharts
          ? _value._stopCharts
          : stopCharts // ignore: cast_nullable_to_non_nullable
              as List<StopCharts>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StopChartEntityImpl implements _StopChartEntity {
  const _$StopChartEntityImpl(
      {@JsonKey(name: 'stop_charts') final List<StopCharts>? stopCharts})
      : _stopCharts = stopCharts;

  factory _$StopChartEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$StopChartEntityImplFromJson(json);

  final List<StopCharts>? _stopCharts;
  @override
  @JsonKey(name: 'stop_charts')
  List<StopCharts>? get stopCharts {
    final value = _stopCharts;
    if (value == null) return null;
    if (_stopCharts is EqualUnmodifiableListView) return _stopCharts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StopChartEntity(stopCharts: $stopCharts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopChartEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._stopCharts, _stopCharts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_stopCharts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StopChartEntityImplCopyWith<_$StopChartEntityImpl> get copyWith =>
      __$$StopChartEntityImplCopyWithImpl<_$StopChartEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StopChartEntityImplToJson(
      this,
    );
  }
}

abstract class _StopChartEntity implements StopChartEntity {
  const factory _StopChartEntity(
          {@JsonKey(name: 'stop_charts') final List<StopCharts>? stopCharts}) =
      _$StopChartEntityImpl;

  factory _StopChartEntity.fromJson(Map<String, dynamic> json) =
      _$StopChartEntityImpl.fromJson;

  @override
  @JsonKey(name: 'stop_charts')
  List<StopCharts>? get stopCharts;
  @override
  @JsonKey(ignore: true)
  _$$StopChartEntityImplCopyWith<_$StopChartEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StopCharts _$StopChartsFromJson(Map<String, dynamic> json) {
  return _StopCharts.fromJson(json);
}

/// @nodoc
mixin _$StopCharts {
  @JsonKey(name: 'data')
  List<Data>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_symbol')
  String? get productSymbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'details')
  List<Details>? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StopChartsCopyWith<StopCharts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StopChartsCopyWith<$Res> {
  factory $StopChartsCopyWith(
          StopCharts value, $Res Function(StopCharts) then) =
      _$StopChartsCopyWithImpl<$Res, StopCharts>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<Data>? data,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_symbol') String? productSymbol,
      @JsonKey(name: 'details') List<Details>? details});
}

/// @nodoc
class _$StopChartsCopyWithImpl<$Res, $Val extends StopCharts>
    implements $StopChartsCopyWith<$Res> {
  _$StopChartsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? productName = freezed,
    Object? productSymbol = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productSymbol: freezed == productSymbol
          ? _value.productSymbol
          : productSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Details>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StopChartsImplCopyWith<$Res>
    implements $StopChartsCopyWith<$Res> {
  factory _$$StopChartsImplCopyWith(
          _$StopChartsImpl value, $Res Function(_$StopChartsImpl) then) =
      __$$StopChartsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<Data>? data,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_symbol') String? productSymbol,
      @JsonKey(name: 'details') List<Details>? details});
}

/// @nodoc
class __$$StopChartsImplCopyWithImpl<$Res>
    extends _$StopChartsCopyWithImpl<$Res, _$StopChartsImpl>
    implements _$$StopChartsImplCopyWith<$Res> {
  __$$StopChartsImplCopyWithImpl(
      _$StopChartsImpl _value, $Res Function(_$StopChartsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? productName = freezed,
    Object? productSymbol = freezed,
    Object? details = freezed,
  }) {
    return _then(_$StopChartsImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productSymbol: freezed == productSymbol
          ? _value.productSymbol
          : productSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Details>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StopChartsImpl implements _StopCharts {
  const _$StopChartsImpl(
      {@JsonKey(name: 'data') final List<Data>? data,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'end_date') this.endDate,
      @JsonKey(name: 'product_name') this.productName,
      @JsonKey(name: 'product_symbol') this.productSymbol,
      @JsonKey(name: 'details') final List<Details>? details})
      : _data = data,
        _details = details;

  factory _$StopChartsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StopChartsImplFromJson(json);

  final List<Data>? _data;
  @override
  @JsonKey(name: 'data')
  List<Data>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'end_date')
  final String? endDate;
  @override
  @JsonKey(name: 'product_name')
  final String? productName;
  @override
  @JsonKey(name: 'product_symbol')
  final String? productSymbol;
  final List<Details>? _details;
  @override
  @JsonKey(name: 'details')
  List<Details>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StopCharts(data: $data, startDate: $startDate, endDate: $endDate, productName: $productName, productSymbol: $productSymbol, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopChartsImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productSymbol, productSymbol) ||
                other.productSymbol == productSymbol) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      startDate,
      endDate,
      productName,
      productSymbol,
      const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StopChartsImplCopyWith<_$StopChartsImpl> get copyWith =>
      __$$StopChartsImplCopyWithImpl<_$StopChartsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StopChartsImplToJson(
      this,
    );
  }
}

abstract class _StopCharts implements StopCharts {
  const factory _StopCharts(
          {@JsonKey(name: 'data') final List<Data>? data,
          @JsonKey(name: 'start_date') final String? startDate,
          @JsonKey(name: 'end_date') final String? endDate,
          @JsonKey(name: 'product_name') final String? productName,
          @JsonKey(name: 'product_symbol') final String? productSymbol,
          @JsonKey(name: 'details') final List<Details>? details}) =
      _$StopChartsImpl;

  factory _StopCharts.fromJson(Map<String, dynamic> json) =
      _$StopChartsImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<Data>? get data;
  @override
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'end_date')
  String? get endDate;
  @override
  @JsonKey(name: 'product_name')
  String? get productName;
  @override
  @JsonKey(name: 'product_symbol')
  String? get productSymbol;
  @override
  @JsonKey(name: 'details')
  List<Details>? get details;
  @override
  @JsonKey(ignore: true)
  _$$StopChartsImplCopyWith<_$StopChartsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Details _$DetailsFromJson(Map<String, dynamic> json) {
  return _Details.fromJson(json);
}

/// @nodoc
mixin _$Details {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  String? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'stop_reason_id')
  int? get stopReasonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'start')
  String? get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'end')
  String? get end => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  dynamic get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  dynamic get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  Type? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'reason')
  String? get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsCopyWith<Details> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsCopyWith<$Res> {
  factory $DetailsCopyWith(Details value, $Res Function(Details) then) =
      _$DetailsCopyWithImpl<$Res, Details>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'product_id') String? productId,
      @JsonKey(name: 'stop_reason_id') int? stopReasonId,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'start') String? start,
      @JsonKey(name: 'end') String? end,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'description') dynamic description,
      @JsonKey(name: 'user_id') dynamic userId,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'type') Type? type,
      @JsonKey(name: 'reason') String? reason});

  $TypeCopyWith<$Res>? get type;
}

/// @nodoc
class _$DetailsCopyWithImpl<$Res, $Val extends Details>
    implements $DetailsCopyWith<$Res> {
  _$DetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? stopReasonId = freezed,
    Object? date = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? duration = freezed,
    Object? status = freezed,
    Object? description = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? type = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      stopReasonId: freezed == stopReasonId
          ? _value.stopReasonId
          : stopReasonId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $TypeCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailsImplCopyWith<$Res> implements $DetailsCopyWith<$Res> {
  factory _$$DetailsImplCopyWith(
          _$DetailsImpl value, $Res Function(_$DetailsImpl) then) =
      __$$DetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'product_id') String? productId,
      @JsonKey(name: 'stop_reason_id') int? stopReasonId,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'start') String? start,
      @JsonKey(name: 'end') String? end,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'description') dynamic description,
      @JsonKey(name: 'user_id') dynamic userId,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'type') Type? type,
      @JsonKey(name: 'reason') String? reason});

  @override
  $TypeCopyWith<$Res>? get type;
}

/// @nodoc
class __$$DetailsImplCopyWithImpl<$Res>
    extends _$DetailsCopyWithImpl<$Res, _$DetailsImpl>
    implements _$$DetailsImplCopyWith<$Res> {
  __$$DetailsImplCopyWithImpl(
      _$DetailsImpl _value, $Res Function(_$DetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? stopReasonId = freezed,
    Object? date = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? duration = freezed,
    Object? status = freezed,
    Object? description = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? type = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$DetailsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      stopReasonId: freezed == stopReasonId
          ? _value.stopReasonId
          : stopReasonId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsImpl implements _Details {
  const _$DetailsImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'product_id') this.productId,
      @JsonKey(name: 'stop_reason_id') this.stopReasonId,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'start') this.start,
      @JsonKey(name: 'end') this.end,
      @JsonKey(name: 'duration') this.duration,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'reason') this.reason});

  factory _$DetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'product_id')
  final String? productId;
  @override
  @JsonKey(name: 'stop_reason_id')
  final int? stopReasonId;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'start')
  final String? start;
  @override
  @JsonKey(name: 'end')
  final String? end;
  @override
  @JsonKey(name: 'duration')
  final int? duration;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'description')
  final dynamic description;
  @override
  @JsonKey(name: 'user_id')
  final dynamic userId;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'type')
  final Type? type;
  @override
  @JsonKey(name: 'reason')
  final String? reason;

  @override
  String toString() {
    return 'Details(id: $id, productId: $productId, stopReasonId: $stopReasonId, date: $date, start: $start, end: $end, duration: $duration, status: $status, description: $description, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, type: $type, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.stopReasonId, stopReasonId) ||
                other.stopReasonId == stopReasonId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productId,
      stopReasonId,
      date,
      start,
      end,
      duration,
      status,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(userId),
      createdAt,
      updatedAt,
      type,
      reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsImplCopyWith<_$DetailsImpl> get copyWith =>
      __$$DetailsImplCopyWithImpl<_$DetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsImplToJson(
      this,
    );
  }
}

abstract class _Details implements Details {
  const factory _Details(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'product_id') final String? productId,
      @JsonKey(name: 'stop_reason_id') final int? stopReasonId,
      @JsonKey(name: 'date') final String? date,
      @JsonKey(name: 'start') final String? start,
      @JsonKey(name: 'end') final String? end,
      @JsonKey(name: 'duration') final int? duration,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'description') final dynamic description,
      @JsonKey(name: 'user_id') final dynamic userId,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'type') final Type? type,
      @JsonKey(name: 'reason') final String? reason}) = _$DetailsImpl;

  factory _Details.fromJson(Map<String, dynamic> json) = _$DetailsImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'product_id')
  String? get productId;
  @override
  @JsonKey(name: 'stop_reason_id')
  int? get stopReasonId;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'start')
  String? get start;
  @override
  @JsonKey(name: 'end')
  String? get end;
  @override
  @JsonKey(name: 'duration')
  int? get duration;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'description')
  dynamic get description;
  @override
  @JsonKey(name: 'user_id')
  dynamic get userId;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'type')
  Type? get type;
  @override
  @JsonKey(name: 'reason')
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$DetailsImplCopyWith<_$DetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Type _$TypeFromJson(Map<String, dynamic> json) {
  return _Type.fromJson(json);
}

/// @nodoc
mixin _$Type {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeCopyWith<Type> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeCopyWith<$Res> {
  factory $TypeCopyWith(Type value, $Res Function(Type) then) =
      _$TypeCopyWithImpl<$Res, Type>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$TypeCopyWithImpl<$Res, $Val extends Type>
    implements $TypeCopyWith<$Res> {
  _$TypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypeImplCopyWith<$Res> implements $TypeCopyWith<$Res> {
  factory _$$TypeImplCopyWith(
          _$TypeImpl value, $Res Function(_$TypeImpl) then) =
      __$$TypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$TypeImplCopyWithImpl<$Res>
    extends _$TypeCopyWithImpl<$Res, _$TypeImpl>
    implements _$$TypeImplCopyWith<$Res> {
  __$$TypeImplCopyWithImpl(_$TypeImpl _value, $Res Function(_$TypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$TypeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeImpl implements _Type {
  const _$TypeImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'title') this.title});

  factory _$TypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'Type(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeImplCopyWith<_$TypeImpl> get copyWith =>
      __$$TypeImplCopyWithImpl<_$TypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeImplToJson(
      this,
    );
  }
}

abstract class _Type implements Type {
  const factory _Type(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'title') final String? title}) = _$TypeImpl;

  factory _Type.fromJson(Map<String, dynamic> json) = _$TypeImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$TypeImplCopyWith<_$TypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'reason')
  String? get reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalHour')
  int? get totalHour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: 'reason') String? reason,
      @JsonKey(name: 'totalHour') int? totalHour});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
    Object? totalHour = freezed,
  }) {
    return _then(_value.copyWith(
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      totalHour: freezed == totalHour
          ? _value.totalHour
          : totalHour // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'reason') String? reason,
      @JsonKey(name: 'totalHour') int? totalHour});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
    Object? totalHour = freezed,
  }) {
    return _then(_$DataImpl(
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      totalHour: freezed == totalHour
          ? _value.totalHour
          : totalHour // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: 'reason') this.reason,
      @JsonKey(name: 'totalHour') this.totalHour});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'reason')
  final String? reason;
  @override
  @JsonKey(name: 'totalHour')
  final int? totalHour;

  @override
  String toString() {
    return 'Data(reason: $reason, totalHour: $totalHour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.totalHour, totalHour) ||
                other.totalHour == totalHour));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reason, totalHour);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: 'reason') final String? reason,
      @JsonKey(name: 'totalHour') final int? totalHour}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'reason')
  String? get reason;
  @override
  @JsonKey(name: 'totalHour')
  int? get totalHour;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
