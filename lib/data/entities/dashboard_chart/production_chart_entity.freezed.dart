// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_chart_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductionChartEntity _$ProductionChartEntityFromJson(
    Map<String, dynamic> json) {
  return _ProductionChartEntity.fromJson(json);
}

/// @nodoc
mixin _$ProductionChartEntity {
  @JsonKey(name: 'schedulePerformanceComparisonCharts')
  List<SchedulePerformanceComparisonCharts>?
      get schedulePerformanceComparisonCharts =>
          throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionChartEntityCopyWith<ProductionChartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionChartEntityCopyWith<$Res> {
  factory $ProductionChartEntityCopyWith(ProductionChartEntity value,
          $Res Function(ProductionChartEntity) then) =
      _$ProductionChartEntityCopyWithImpl<$Res, ProductionChartEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'schedulePerformanceComparisonCharts')
      List<SchedulePerformanceComparisonCharts>?
          schedulePerformanceComparisonCharts});
}

/// @nodoc
class _$ProductionChartEntityCopyWithImpl<$Res,
        $Val extends ProductionChartEntity>
    implements $ProductionChartEntityCopyWith<$Res> {
  _$ProductionChartEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedulePerformanceComparisonCharts = freezed,
  }) {
    return _then(_value.copyWith(
      schedulePerformanceComparisonCharts: freezed ==
              schedulePerformanceComparisonCharts
          ? _value.schedulePerformanceComparisonCharts
          : schedulePerformanceComparisonCharts // ignore: cast_nullable_to_non_nullable
              as List<SchedulePerformanceComparisonCharts>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionChartEntityImplCopyWith<$Res>
    implements $ProductionChartEntityCopyWith<$Res> {
  factory _$$ProductionChartEntityImplCopyWith(
          _$ProductionChartEntityImpl value,
          $Res Function(_$ProductionChartEntityImpl) then) =
      __$$ProductionChartEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'schedulePerformanceComparisonCharts')
      List<SchedulePerformanceComparisonCharts>?
          schedulePerformanceComparisonCharts});
}

/// @nodoc
class __$$ProductionChartEntityImplCopyWithImpl<$Res>
    extends _$ProductionChartEntityCopyWithImpl<$Res,
        _$ProductionChartEntityImpl>
    implements _$$ProductionChartEntityImplCopyWith<$Res> {
  __$$ProductionChartEntityImplCopyWithImpl(_$ProductionChartEntityImpl _value,
      $Res Function(_$ProductionChartEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedulePerformanceComparisonCharts = freezed,
  }) {
    return _then(_$ProductionChartEntityImpl(
      schedulePerformanceComparisonCharts: freezed ==
              schedulePerformanceComparisonCharts
          ? _value._schedulePerformanceComparisonCharts
          : schedulePerformanceComparisonCharts // ignore: cast_nullable_to_non_nullable
              as List<SchedulePerformanceComparisonCharts>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductionChartEntityImpl implements _ProductionChartEntity {
  const _$ProductionChartEntityImpl(
      {@JsonKey(name: 'schedulePerformanceComparisonCharts')
      final List<SchedulePerformanceComparisonCharts>?
          schedulePerformanceComparisonCharts})
      : _schedulePerformanceComparisonCharts =
            schedulePerformanceComparisonCharts;

  factory _$ProductionChartEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionChartEntityImplFromJson(json);

  final List<SchedulePerformanceComparisonCharts>?
      _schedulePerformanceComparisonCharts;
  @override
  @JsonKey(name: 'schedulePerformanceComparisonCharts')
  List<SchedulePerformanceComparisonCharts>?
      get schedulePerformanceComparisonCharts {
    final value = _schedulePerformanceComparisonCharts;
    if (value == null) return null;
    if (_schedulePerformanceComparisonCharts is EqualUnmodifiableListView)
      return _schedulePerformanceComparisonCharts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductionChartEntity(schedulePerformanceComparisonCharts: $schedulePerformanceComparisonCharts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionChartEntityImpl &&
            const DeepCollectionEquality().equals(
                other._schedulePerformanceComparisonCharts,
                _schedulePerformanceComparisonCharts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality()
          .hash(_schedulePerformanceComparisonCharts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionChartEntityImplCopyWith<_$ProductionChartEntityImpl>
      get copyWith => __$$ProductionChartEntityImplCopyWithImpl<
          _$ProductionChartEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionChartEntityImplToJson(
      this,
    );
  }
}

abstract class _ProductionChartEntity implements ProductionChartEntity {
  const factory _ProductionChartEntity(
      {@JsonKey(name: 'schedulePerformanceComparisonCharts')
      final List<SchedulePerformanceComparisonCharts>?
          schedulePerformanceComparisonCharts}) = _$ProductionChartEntityImpl;

  factory _ProductionChartEntity.fromJson(Map<String, dynamic> json) =
      _$ProductionChartEntityImpl.fromJson;

  @override
  @JsonKey(name: 'schedulePerformanceComparisonCharts')
  List<SchedulePerformanceComparisonCharts>?
      get schedulePerformanceComparisonCharts;
  @override
  @JsonKey(ignore: true)
  _$$ProductionChartEntityImplCopyWith<_$ProductionChartEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SchedulePerformanceComparisonCharts
    _$SchedulePerformanceComparisonChartsFromJson(Map<String, dynamic> json) {
  return _SchedulePerformanceComparisonCharts.fromJson(json);
}

/// @nodoc
mixin _$SchedulePerformanceComparisonCharts {
  @JsonKey(name: 'data')
  List<Data>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  @DateJsonParser()
  DateTime? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  @DateJsonParser()
  DateTime? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_performance')
  List<CurrentPerformance>? get currentPerformance =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchedulePerformanceComparisonChartsCopyWith<
          SchedulePerformanceComparisonCharts>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulePerformanceComparisonChartsCopyWith<$Res> {
  factory $SchedulePerformanceComparisonChartsCopyWith(
          SchedulePerformanceComparisonCharts value,
          $Res Function(SchedulePerformanceComparisonCharts) then) =
      _$SchedulePerformanceComparisonChartsCopyWithImpl<$Res,
          SchedulePerformanceComparisonCharts>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<Data>? data,
      @JsonKey(name: 'start_date') @DateJsonParser() DateTime? startDate,
      @JsonKey(name: 'end_date') @DateJsonParser() DateTime? endDate,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'current_performance')
      List<CurrentPerformance>? currentPerformance});
}

/// @nodoc
class _$SchedulePerformanceComparisonChartsCopyWithImpl<$Res,
        $Val extends SchedulePerformanceComparisonCharts>
    implements $SchedulePerformanceComparisonChartsCopyWith<$Res> {
  _$SchedulePerformanceComparisonChartsCopyWithImpl(this._value, this._then);

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
    Object? currentPerformance = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPerformance: freezed == currentPerformance
          ? _value.currentPerformance
          : currentPerformance // ignore: cast_nullable_to_non_nullable
              as List<CurrentPerformance>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchedulePerformanceComparisonChartsImplCopyWith<$Res>
    implements $SchedulePerformanceComparisonChartsCopyWith<$Res> {
  factory _$$SchedulePerformanceComparisonChartsImplCopyWith(
          _$SchedulePerformanceComparisonChartsImpl value,
          $Res Function(_$SchedulePerformanceComparisonChartsImpl) then) =
      __$$SchedulePerformanceComparisonChartsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<Data>? data,
      @JsonKey(name: 'start_date') @DateJsonParser() DateTime? startDate,
      @JsonKey(name: 'end_date') @DateJsonParser() DateTime? endDate,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'current_performance')
      List<CurrentPerformance>? currentPerformance});
}

/// @nodoc
class __$$SchedulePerformanceComparisonChartsImplCopyWithImpl<$Res>
    extends _$SchedulePerformanceComparisonChartsCopyWithImpl<$Res,
        _$SchedulePerformanceComparisonChartsImpl>
    implements _$$SchedulePerformanceComparisonChartsImplCopyWith<$Res> {
  __$$SchedulePerformanceComparisonChartsImplCopyWithImpl(
      _$SchedulePerformanceComparisonChartsImpl _value,
      $Res Function(_$SchedulePerformanceComparisonChartsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? productName = freezed,
    Object? currentPerformance = freezed,
  }) {
    return _then(_$SchedulePerformanceComparisonChartsImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPerformance: freezed == currentPerformance
          ? _value._currentPerformance
          : currentPerformance // ignore: cast_nullable_to_non_nullable
              as List<CurrentPerformance>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchedulePerformanceComparisonChartsImpl
    implements _SchedulePerformanceComparisonCharts {
  const _$SchedulePerformanceComparisonChartsImpl(
      {@JsonKey(name: 'data') final List<Data>? data,
      @JsonKey(name: 'start_date') @DateJsonParser() this.startDate,
      @JsonKey(name: 'end_date') @DateJsonParser() this.endDate,
      @JsonKey(name: 'product_name') this.productName,
      @JsonKey(name: 'current_performance')
      final List<CurrentPerformance>? currentPerformance})
      : _data = data,
        _currentPerformance = currentPerformance;

  factory _$SchedulePerformanceComparisonChartsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SchedulePerformanceComparisonChartsImplFromJson(json);

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
  @DateJsonParser()
  final DateTime? startDate;
  @override
  @JsonKey(name: 'end_date')
  @DateJsonParser()
  final DateTime? endDate;
  @override
  @JsonKey(name: 'product_name')
  final String? productName;
  final List<CurrentPerformance>? _currentPerformance;
  @override
  @JsonKey(name: 'current_performance')
  List<CurrentPerformance>? get currentPerformance {
    final value = _currentPerformance;
    if (value == null) return null;
    if (_currentPerformance is EqualUnmodifiableListView)
      return _currentPerformance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SchedulePerformanceComparisonCharts(data: $data, startDate: $startDate, endDate: $endDate, productName: $productName, currentPerformance: $currentPerformance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchedulePerformanceComparisonChartsImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            const DeepCollectionEquality()
                .equals(other._currentPerformance, _currentPerformance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      startDate,
      endDate,
      productName,
      const DeepCollectionEquality().hash(_currentPerformance));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchedulePerformanceComparisonChartsImplCopyWith<
          _$SchedulePerformanceComparisonChartsImpl>
      get copyWith => __$$SchedulePerformanceComparisonChartsImplCopyWithImpl<
          _$SchedulePerformanceComparisonChartsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchedulePerformanceComparisonChartsImplToJson(
      this,
    );
  }
}

abstract class _SchedulePerformanceComparisonCharts
    implements SchedulePerformanceComparisonCharts {
  const factory _SchedulePerformanceComparisonCharts(
      {@JsonKey(name: 'data') final List<Data>? data,
      @JsonKey(name: 'start_date') @DateJsonParser() final DateTime? startDate,
      @JsonKey(name: 'end_date') @DateJsonParser() final DateTime? endDate,
      @JsonKey(name: 'product_name') final String? productName,
      @JsonKey(name: 'current_performance')
      final List<CurrentPerformance>?
          currentPerformance}) = _$SchedulePerformanceComparisonChartsImpl;

  factory _SchedulePerformanceComparisonCharts.fromJson(
          Map<String, dynamic> json) =
      _$SchedulePerformanceComparisonChartsImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<Data>? get data;
  @override
  @JsonKey(name: 'start_date')
  @DateJsonParser()
  DateTime? get startDate;
  @override
  @JsonKey(name: 'end_date')
  @DateJsonParser()
  DateTime? get endDate;
  @override
  @JsonKey(name: 'product_name')
  String? get productName;
  @override
  @JsonKey(name: 'current_performance')
  List<CurrentPerformance>? get currentPerformance;
  @override
  @JsonKey(ignore: true)
  _$$SchedulePerformanceComparisonChartsImplCopyWith<
          _$SchedulePerformanceComparisonChartsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CurrentPerformance _$CurrentPerformanceFromJson(Map<String, dynamic> json) {
  return _CurrentPerformance.fromJson(json);
}

/// @nodoc
mixin _$CurrentPerformance {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'performance')
  int? get performance => throw _privateConstructorUsedError;
  @JsonKey(name: 'commited')
  int? get commited => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentPerformanceCopyWith<CurrentPerformance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentPerformanceCopyWith<$Res> {
  factory $CurrentPerformanceCopyWith(
          CurrentPerformance value, $Res Function(CurrentPerformance) then) =
      _$CurrentPerformanceCopyWithImpl<$Res, CurrentPerformance>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'performance') int? performance,
      @JsonKey(name: 'commited') int? commited});
}

/// @nodoc
class _$CurrentPerformanceCopyWithImpl<$Res, $Val extends CurrentPerformance>
    implements $CurrentPerformanceCopyWith<$Res> {
  _$CurrentPerformanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? performance = freezed,
    Object? commited = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      performance: freezed == performance
          ? _value.performance
          : performance // ignore: cast_nullable_to_non_nullable
              as int?,
      commited: freezed == commited
          ? _value.commited
          : commited // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentPerformanceImplCopyWith<$Res>
    implements $CurrentPerformanceCopyWith<$Res> {
  factory _$$CurrentPerformanceImplCopyWith(_$CurrentPerformanceImpl value,
          $Res Function(_$CurrentPerformanceImpl) then) =
      __$$CurrentPerformanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'performance') int? performance,
      @JsonKey(name: 'commited') int? commited});
}

/// @nodoc
class __$$CurrentPerformanceImplCopyWithImpl<$Res>
    extends _$CurrentPerformanceCopyWithImpl<$Res, _$CurrentPerformanceImpl>
    implements _$$CurrentPerformanceImplCopyWith<$Res> {
  __$$CurrentPerformanceImplCopyWithImpl(_$CurrentPerformanceImpl _value,
      $Res Function(_$CurrentPerformanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? performance = freezed,
    Object? commited = freezed,
  }) {
    return _then(_$CurrentPerformanceImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      performance: freezed == performance
          ? _value.performance
          : performance // ignore: cast_nullable_to_non_nullable
              as int?,
      commited: freezed == commited
          ? _value.commited
          : commited // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentPerformanceImpl implements _CurrentPerformance {
  const _$CurrentPerformanceImpl(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'performance') this.performance,
      @JsonKey(name: 'commited') this.commited});

  factory _$CurrentPerformanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentPerformanceImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'performance')
  final int? performance;
  @override
  @JsonKey(name: 'commited')
  final int? commited;

  @override
  String toString() {
    return 'CurrentPerformance(title: $title, performance: $performance, commited: $commited)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentPerformanceImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.performance, performance) ||
                other.performance == performance) &&
            (identical(other.commited, commited) ||
                other.commited == commited));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, performance, commited);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentPerformanceImplCopyWith<_$CurrentPerformanceImpl> get copyWith =>
      __$$CurrentPerformanceImplCopyWithImpl<_$CurrentPerformanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentPerformanceImplToJson(
      this,
    );
  }
}

abstract class _CurrentPerformance implements CurrentPerformance {
  const factory _CurrentPerformance(
          {@JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'performance') final int? performance,
          @JsonKey(name: 'commited') final int? commited}) =
      _$CurrentPerformanceImpl;

  factory _CurrentPerformance.fromJson(Map<String, dynamic> json) =
      _$CurrentPerformanceImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'performance')
  int? get performance;
  @override
  @JsonKey(name: 'commited')
  int? get commited;
  @override
  @JsonKey(ignore: true)
  _$$CurrentPerformanceImplCopyWith<_$CurrentPerformanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule')
  int? get schedule => throw _privateConstructorUsedError;
  @JsonKey(name: 'performance')
  int? get performance => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviation')
  int? get deviation => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviationStartLine')
  int? get deviationStartLine => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'schedule') int? schedule,
      @JsonKey(name: 'performance') int? performance,
      @JsonKey(name: 'deviation') int? deviation,
      @JsonKey(name: 'deviationStartLine') int? deviationStartLine});
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
    Object? date = freezed,
    Object? schedule = freezed,
    Object? performance = freezed,
    Object? deviation = freezed,
    Object? deviationStartLine = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as int?,
      performance: freezed == performance
          ? _value.performance
          : performance // ignore: cast_nullable_to_non_nullable
              as int?,
      deviation: freezed == deviation
          ? _value.deviation
          : deviation // ignore: cast_nullable_to_non_nullable
              as int?,
      deviationStartLine: freezed == deviationStartLine
          ? _value.deviationStartLine
          : deviationStartLine // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'schedule') int? schedule,
      @JsonKey(name: 'performance') int? performance,
      @JsonKey(name: 'deviation') int? deviation,
      @JsonKey(name: 'deviationStartLine') int? deviationStartLine});
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
    Object? date = freezed,
    Object? schedule = freezed,
    Object? performance = freezed,
    Object? deviation = freezed,
    Object? deviationStartLine = freezed,
  }) {
    return _then(_$DataImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as int?,
      performance: freezed == performance
          ? _value.performance
          : performance // ignore: cast_nullable_to_non_nullable
              as int?,
      deviation: freezed == deviation
          ? _value.deviation
          : deviation // ignore: cast_nullable_to_non_nullable
              as int?,
      deviationStartLine: freezed == deviationStartLine
          ? _value.deviationStartLine
          : deviationStartLine // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: 'date') this.date,
      @JsonKey(name: 'schedule') this.schedule,
      @JsonKey(name: 'performance') this.performance,
      @JsonKey(name: 'deviation') this.deviation,
      @JsonKey(name: 'deviationStartLine') this.deviationStartLine});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'schedule')
  final int? schedule;
  @override
  @JsonKey(name: 'performance')
  final int? performance;
  @override
  @JsonKey(name: 'deviation')
  final int? deviation;
  @override
  @JsonKey(name: 'deviationStartLine')
  final int? deviationStartLine;

  @override
  String toString() {
    return 'Data(date: $date, schedule: $schedule, performance: $performance, deviation: $deviation, deviationStartLine: $deviationStartLine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.performance, performance) ||
                other.performance == performance) &&
            (identical(other.deviation, deviation) ||
                other.deviation == deviation) &&
            (identical(other.deviationStartLine, deviationStartLine) ||
                other.deviationStartLine == deviationStartLine));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, schedule, performance, deviation, deviationStartLine);

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
          {@JsonKey(name: 'date') final String? date,
          @JsonKey(name: 'schedule') final int? schedule,
          @JsonKey(name: 'performance') final int? performance,
          @JsonKey(name: 'deviation') final int? deviation,
          @JsonKey(name: 'deviationStartLine') final int? deviationStartLine}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'schedule')
  int? get schedule;
  @override
  @JsonKey(name: 'performance')
  int? get performance;
  @override
  @JsonKey(name: 'deviation')
  int? get deviation;
  @override
  @JsonKey(name: 'deviationStartLine')
  int? get deviationStartLine;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
