// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_status_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductionStatusEntity _$ProductionStatusEntityFromJson(
    Map<String, dynamic> json) {
  return _ProductionStatusEntity.fromJson(json);
}

/// @nodoc
mixin _$ProductionStatusEntity {
  @JsonKey(name: 'performance_chart')
  PerformanceChart? get performanceChart => throw _privateConstructorUsedError;
  @JsonKey(name: 'details')
  List<Details>? get details => throw _privateConstructorUsedError;

  /// Serializes this ProductionStatusEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductionStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductionStatusEntityCopyWith<ProductionStatusEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionStatusEntityCopyWith<$Res> {
  factory $ProductionStatusEntityCopyWith(ProductionStatusEntity value,
          $Res Function(ProductionStatusEntity) then) =
      _$ProductionStatusEntityCopyWithImpl<$Res, ProductionStatusEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'performance_chart') PerformanceChart? performanceChart,
      @JsonKey(name: 'details') List<Details>? details});

  $PerformanceChartCopyWith<$Res>? get performanceChart;
}

/// @nodoc
class _$ProductionStatusEntityCopyWithImpl<$Res,
        $Val extends ProductionStatusEntity>
    implements $ProductionStatusEntityCopyWith<$Res> {
  _$ProductionStatusEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductionStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? performanceChart = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      performanceChart: freezed == performanceChart
          ? _value.performanceChart
          : performanceChart // ignore: cast_nullable_to_non_nullable
              as PerformanceChart?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Details>?,
    ) as $Val);
  }

  /// Create a copy of ProductionStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PerformanceChartCopyWith<$Res>? get performanceChart {
    if (_value.performanceChart == null) {
      return null;
    }

    return $PerformanceChartCopyWith<$Res>(_value.performanceChart!, (value) {
      return _then(_value.copyWith(performanceChart: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductionStatusEntityImplCopyWith<$Res>
    implements $ProductionStatusEntityCopyWith<$Res> {
  factory _$$ProductionStatusEntityImplCopyWith(
          _$ProductionStatusEntityImpl value,
          $Res Function(_$ProductionStatusEntityImpl) then) =
      __$$ProductionStatusEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'performance_chart') PerformanceChart? performanceChart,
      @JsonKey(name: 'details') List<Details>? details});

  @override
  $PerformanceChartCopyWith<$Res>? get performanceChart;
}

/// @nodoc
class __$$ProductionStatusEntityImplCopyWithImpl<$Res>
    extends _$ProductionStatusEntityCopyWithImpl<$Res,
        _$ProductionStatusEntityImpl>
    implements _$$ProductionStatusEntityImplCopyWith<$Res> {
  __$$ProductionStatusEntityImplCopyWithImpl(
      _$ProductionStatusEntityImpl _value,
      $Res Function(_$ProductionStatusEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductionStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? performanceChart = freezed,
    Object? details = freezed,
  }) {
    return _then(_$ProductionStatusEntityImpl(
      performanceChart: freezed == performanceChart
          ? _value.performanceChart
          : performanceChart // ignore: cast_nullable_to_non_nullable
              as PerformanceChart?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Details>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductionStatusEntityImpl implements _ProductionStatusEntity {
  const _$ProductionStatusEntityImpl(
      {@JsonKey(name: 'performance_chart') this.performanceChart,
      @JsonKey(name: 'details') final List<Details>? details})
      : _details = details;

  factory _$ProductionStatusEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionStatusEntityImplFromJson(json);

  @override
  @JsonKey(name: 'performance_chart')
  final PerformanceChart? performanceChart;
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
    return 'ProductionStatusEntity(performanceChart: $performanceChart, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionStatusEntityImpl &&
            (identical(other.performanceChart, performanceChart) ||
                other.performanceChart == performanceChart) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, performanceChart,
      const DeepCollectionEquality().hash(_details));

  /// Create a copy of ProductionStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionStatusEntityImplCopyWith<_$ProductionStatusEntityImpl>
      get copyWith => __$$ProductionStatusEntityImplCopyWithImpl<
          _$ProductionStatusEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionStatusEntityImplToJson(
      this,
    );
  }
}

abstract class _ProductionStatusEntity implements ProductionStatusEntity {
  const factory _ProductionStatusEntity(
          {@JsonKey(name: 'performance_chart')
          final PerformanceChart? performanceChart,
          @JsonKey(name: 'details') final List<Details>? details}) =
      _$ProductionStatusEntityImpl;

  factory _ProductionStatusEntity.fromJson(Map<String, dynamic> json) =
      _$ProductionStatusEntityImpl.fromJson;

  @override
  @JsonKey(name: 'performance_chart')
  PerformanceChart? get performanceChart;
  @override
  @JsonKey(name: 'details')
  List<Details>? get details;

  /// Create a copy of ProductionStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductionStatusEntityImplCopyWith<_$ProductionStatusEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Details _$DetailsFromJson(Map<String, dynamic> json) {
  return _Details.fromJson(json);
}

/// @nodoc
mixin _$Details {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String? get value => throw _privateConstructorUsedError;

  /// Serializes this Details to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Details
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailsCopyWith<Details> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsCopyWith<$Res> {
  factory $DetailsCopyWith(Details value, $Res Function(Details) then) =
      _$DetailsCopyWithImpl<$Res, Details>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'value') String? value});
}

/// @nodoc
class _$DetailsCopyWithImpl<$Res, $Val extends Details>
    implements $DetailsCopyWith<$Res> {
  _$DetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Details
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'value') String? value});
}

/// @nodoc
class __$$DetailsImplCopyWithImpl<$Res>
    extends _$DetailsCopyWithImpl<$Res, _$DetailsImpl>
    implements _$$DetailsImplCopyWith<$Res> {
  __$$DetailsImplCopyWithImpl(
      _$DetailsImpl _value, $Res Function(_$DetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Details
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? value = freezed,
  }) {
    return _then(_$DetailsImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsImpl implements _Details {
  const _$DetailsImpl(
      {@JsonKey(name: 'title') this.title, @JsonKey(name: 'value') this.value});

  factory _$DetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'value')
  final String? value;

  @override
  String toString() {
    return 'Details(title: $title, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, value);

  /// Create a copy of Details
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {@JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'value') final String? value}) = _$DetailsImpl;

  factory _Details.fromJson(Map<String, dynamic> json) = _$DetailsImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'value')
  String? get value;

  /// Create a copy of Details
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsImplCopyWith<_$DetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PerformanceChart _$PerformanceChartFromJson(Map<String, dynamic> json) {
  return _PerformanceChart.fromJson(json);
}

/// @nodoc
mixin _$PerformanceChart {
  @JsonKey(name: 'data')
  List<Data>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'period')
  String? get period => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String? get endDate => throw _privateConstructorUsedError;

  /// Serializes this PerformanceChart to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PerformanceChart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PerformanceChartCopyWith<PerformanceChart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformanceChartCopyWith<$Res> {
  factory $PerformanceChartCopyWith(
          PerformanceChart value, $Res Function(PerformanceChart) then) =
      _$PerformanceChartCopyWithImpl<$Res, PerformanceChart>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<Data>? data,
      @JsonKey(name: 'period') String? period,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate});
}

/// @nodoc
class _$PerformanceChartCopyWithImpl<$Res, $Val extends PerformanceChart>
    implements $PerformanceChartCopyWith<$Res> {
  _$PerformanceChartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PerformanceChart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? period = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PerformanceChartImplCopyWith<$Res>
    implements $PerformanceChartCopyWith<$Res> {
  factory _$$PerformanceChartImplCopyWith(_$PerformanceChartImpl value,
          $Res Function(_$PerformanceChartImpl) then) =
      __$$PerformanceChartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<Data>? data,
      @JsonKey(name: 'period') String? period,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate});
}

/// @nodoc
class __$$PerformanceChartImplCopyWithImpl<$Res>
    extends _$PerformanceChartCopyWithImpl<$Res, _$PerformanceChartImpl>
    implements _$$PerformanceChartImplCopyWith<$Res> {
  __$$PerformanceChartImplCopyWithImpl(_$PerformanceChartImpl _value,
      $Res Function(_$PerformanceChartImpl) _then)
      : super(_value, _then);

  /// Create a copy of PerformanceChart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? period = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$PerformanceChartImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformanceChartImpl implements _PerformanceChart {
  const _$PerformanceChartImpl(
      {@JsonKey(name: 'data') final List<Data>? data,
      @JsonKey(name: 'period') this.period,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'end_date') this.endDate})
      : _data = data;

  factory _$PerformanceChartImpl.fromJson(Map<String, dynamic> json) =>
      _$$PerformanceChartImplFromJson(json);

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
  @JsonKey(name: 'period')
  final String? period;
  @override
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'end_date')
  final String? endDate;

  @override
  String toString() {
    return 'PerformanceChart(data: $data, period: $period, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformanceChartImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), period, startDate, endDate);

  /// Create a copy of PerformanceChart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformanceChartImplCopyWith<_$PerformanceChartImpl> get copyWith =>
      __$$PerformanceChartImplCopyWithImpl<_$PerformanceChartImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformanceChartImplToJson(
      this,
    );
  }
}

abstract class _PerformanceChart implements PerformanceChart {
  const factory _PerformanceChart(
          {@JsonKey(name: 'data') final List<Data>? data,
          @JsonKey(name: 'period') final String? period,
          @JsonKey(name: 'start_date') final String? startDate,
          @JsonKey(name: 'end_date') final String? endDate}) =
      _$PerformanceChartImpl;

  factory _PerformanceChart.fromJson(Map<String, dynamic> json) =
      _$PerformanceChartImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<Data>? get data;
  @override
  @JsonKey(name: 'period')
  String? get period;
  @override
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'end_date')
  String? get endDate;

  /// Create a copy of PerformanceChart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PerformanceChartImplCopyWith<_$PerformanceChartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'performance_this_year')
  int? get performanceThisYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'performance_last_year')
  int? get performanceLastYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_this_year')
  int? get scheduleThisYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_last_year')
  int? get scheduleLastYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_start_line')
  int? get scheduleStartLine => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'performance_this_year') int? performanceThisYear,
      @JsonKey(name: 'performance_last_year') int? performanceLastYear,
      @JsonKey(name: 'schedule_this_year') int? scheduleThisYear,
      @JsonKey(name: 'schedule_last_year') int? scheduleLastYear,
      @JsonKey(name: 'schedule_start_line') int? scheduleStartLine});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? performanceThisYear = freezed,
    Object? performanceLastYear = freezed,
    Object? scheduleThisYear = freezed,
    Object? scheduleLastYear = freezed,
    Object? scheduleStartLine = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      performanceThisYear: freezed == performanceThisYear
          ? _value.performanceThisYear
          : performanceThisYear // ignore: cast_nullable_to_non_nullable
              as int?,
      performanceLastYear: freezed == performanceLastYear
          ? _value.performanceLastYear
          : performanceLastYear // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduleThisYear: freezed == scheduleThisYear
          ? _value.scheduleThisYear
          : scheduleThisYear // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduleLastYear: freezed == scheduleLastYear
          ? _value.scheduleLastYear
          : scheduleLastYear // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduleStartLine: freezed == scheduleStartLine
          ? _value.scheduleStartLine
          : scheduleStartLine // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'performance_this_year') int? performanceThisYear,
      @JsonKey(name: 'performance_last_year') int? performanceLastYear,
      @JsonKey(name: 'schedule_this_year') int? scheduleThisYear,
      @JsonKey(name: 'schedule_last_year') int? scheduleLastYear,
      @JsonKey(name: 'schedule_start_line') int? scheduleStartLine});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? performanceThisYear = freezed,
    Object? performanceLastYear = freezed,
    Object? scheduleThisYear = freezed,
    Object? scheduleLastYear = freezed,
    Object? scheduleStartLine = freezed,
  }) {
    return _then(_$DataImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      performanceThisYear: freezed == performanceThisYear
          ? _value.performanceThisYear
          : performanceThisYear // ignore: cast_nullable_to_non_nullable
              as int?,
      performanceLastYear: freezed == performanceLastYear
          ? _value.performanceLastYear
          : performanceLastYear // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduleThisYear: freezed == scheduleThisYear
          ? _value.scheduleThisYear
          : scheduleThisYear // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduleLastYear: freezed == scheduleLastYear
          ? _value.scheduleLastYear
          : scheduleLastYear // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduleStartLine: freezed == scheduleStartLine
          ? _value.scheduleStartLine
          : scheduleStartLine // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'performance_this_year') this.performanceThisYear,
      @JsonKey(name: 'performance_last_year') this.performanceLastYear,
      @JsonKey(name: 'schedule_this_year') this.scheduleThisYear,
      @JsonKey(name: 'schedule_last_year') this.scheduleLastYear,
      @JsonKey(name: 'schedule_start_line') this.scheduleStartLine});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'performance_this_year')
  final int? performanceThisYear;
  @override
  @JsonKey(name: 'performance_last_year')
  final int? performanceLastYear;
  @override
  @JsonKey(name: 'schedule_this_year')
  final int? scheduleThisYear;
  @override
  @JsonKey(name: 'schedule_last_year')
  final int? scheduleLastYear;
  @override
  @JsonKey(name: 'schedule_start_line')
  final int? scheduleStartLine;

  @override
  String toString() {
    return 'Data(title: $title, performanceThisYear: $performanceThisYear, performanceLastYear: $performanceLastYear, scheduleThisYear: $scheduleThisYear, scheduleLastYear: $scheduleLastYear, scheduleStartLine: $scheduleStartLine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.performanceThisYear, performanceThisYear) ||
                other.performanceThisYear == performanceThisYear) &&
            (identical(other.performanceLastYear, performanceLastYear) ||
                other.performanceLastYear == performanceLastYear) &&
            (identical(other.scheduleThisYear, scheduleThisYear) ||
                other.scheduleThisYear == scheduleThisYear) &&
            (identical(other.scheduleLastYear, scheduleLastYear) ||
                other.scheduleLastYear == scheduleLastYear) &&
            (identical(other.scheduleStartLine, scheduleStartLine) ||
                other.scheduleStartLine == scheduleStartLine));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      performanceThisYear,
      performanceLastYear,
      scheduleThisYear,
      scheduleLastYear,
      scheduleStartLine);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {@JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'performance_this_year') final int? performanceThisYear,
      @JsonKey(name: 'performance_last_year') final int? performanceLastYear,
      @JsonKey(name: 'schedule_this_year') final int? scheduleThisYear,
      @JsonKey(name: 'schedule_last_year') final int? scheduleLastYear,
      @JsonKey(name: 'schedule_start_line')
      final int? scheduleStartLine}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'performance_this_year')
  int? get performanceThisYear;
  @override
  @JsonKey(name: 'performance_last_year')
  int? get performanceLastYear;
  @override
  @JsonKey(name: 'schedule_this_year')
  int? get scheduleThisYear;
  @override
  @JsonKey(name: 'schedule_last_year')
  int? get scheduleLastYear;
  @override
  @JsonKey(name: 'schedule_start_line')
  int? get scheduleStartLine;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
