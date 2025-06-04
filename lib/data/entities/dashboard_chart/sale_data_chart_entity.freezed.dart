// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_data_chart_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaleDataChartEntity _$SaleDataChartEntityFromJson(Map<String, dynamic> json) {
  return _SaleDataChartEntity.fromJson(json);
}

/// @nodoc
mixin _$SaleDataChartEntity {
  @JsonKey(name: 'schedulePerformanceComparisonCharts')
  List<SchedulePerformanceComparisonCharts>?
      get schedulePerformanceComparisonCharts =>
          throw _privateConstructorUsedError;

  /// Serializes this SaleDataChartEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SaleDataChartEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SaleDataChartEntityCopyWith<SaleDataChartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleDataChartEntityCopyWith<$Res> {
  factory $SaleDataChartEntityCopyWith(
          SaleDataChartEntity value, $Res Function(SaleDataChartEntity) then) =
      _$SaleDataChartEntityCopyWithImpl<$Res, SaleDataChartEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'schedulePerformanceComparisonCharts')
      List<SchedulePerformanceComparisonCharts>?
          schedulePerformanceComparisonCharts});
}

/// @nodoc
class _$SaleDataChartEntityCopyWithImpl<$Res, $Val extends SaleDataChartEntity>
    implements $SaleDataChartEntityCopyWith<$Res> {
  _$SaleDataChartEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaleDataChartEntity
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$SaleDataChartEntityImplCopyWith<$Res>
    implements $SaleDataChartEntityCopyWith<$Res> {
  factory _$$SaleDataChartEntityImplCopyWith(_$SaleDataChartEntityImpl value,
          $Res Function(_$SaleDataChartEntityImpl) then) =
      __$$SaleDataChartEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'schedulePerformanceComparisonCharts')
      List<SchedulePerformanceComparisonCharts>?
          schedulePerformanceComparisonCharts});
}

/// @nodoc
class __$$SaleDataChartEntityImplCopyWithImpl<$Res>
    extends _$SaleDataChartEntityCopyWithImpl<$Res, _$SaleDataChartEntityImpl>
    implements _$$SaleDataChartEntityImplCopyWith<$Res> {
  __$$SaleDataChartEntityImplCopyWithImpl(_$SaleDataChartEntityImpl _value,
      $Res Function(_$SaleDataChartEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaleDataChartEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedulePerformanceComparisonCharts = freezed,
  }) {
    return _then(_$SaleDataChartEntityImpl(
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
class _$SaleDataChartEntityImpl implements _SaleDataChartEntity {
  const _$SaleDataChartEntityImpl(
      {@JsonKey(name: 'schedulePerformanceComparisonCharts')
      final List<SchedulePerformanceComparisonCharts>?
          schedulePerformanceComparisonCharts})
      : _schedulePerformanceComparisonCharts =
            schedulePerformanceComparisonCharts;

  factory _$SaleDataChartEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleDataChartEntityImplFromJson(json);

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
    return 'SaleDataChartEntity(schedulePerformanceComparisonCharts: $schedulePerformanceComparisonCharts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleDataChartEntityImpl &&
            const DeepCollectionEquality().equals(
                other._schedulePerformanceComparisonCharts,
                _schedulePerformanceComparisonCharts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality()
          .hash(_schedulePerformanceComparisonCharts));

  /// Create a copy of SaleDataChartEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleDataChartEntityImplCopyWith<_$SaleDataChartEntityImpl> get copyWith =>
      __$$SaleDataChartEntityImplCopyWithImpl<_$SaleDataChartEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleDataChartEntityImplToJson(
      this,
    );
  }
}

abstract class _SaleDataChartEntity implements SaleDataChartEntity {
  const factory _SaleDataChartEntity(
      {@JsonKey(name: 'schedulePerformanceComparisonCharts')
      final List<SchedulePerformanceComparisonCharts>?
          schedulePerformanceComparisonCharts}) = _$SaleDataChartEntityImpl;

  factory _SaleDataChartEntity.fromJson(Map<String, dynamic> json) =
      _$SaleDataChartEntityImpl.fromJson;

  @override
  @JsonKey(name: 'schedulePerformanceComparisonCharts')
  List<SchedulePerformanceComparisonCharts>?
      get schedulePerformanceComparisonCharts;

  /// Create a copy of SaleDataChartEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaleDataChartEntityImplCopyWith<_$SaleDataChartEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
  @JsonKey(name: 'product_symbol')
  String? get productSymbol => throw _privateConstructorUsedError;

  /// Serializes this SchedulePerformanceComparisonCharts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SchedulePerformanceComparisonCharts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      @JsonKey(name: 'product_symbol') String? productSymbol});
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

  /// Create a copy of SchedulePerformanceComparisonCharts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? productName = freezed,
    Object? productSymbol = freezed,
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
      productSymbol: freezed == productSymbol
          ? _value.productSymbol
          : productSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: 'product_symbol') String? productSymbol});
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

  /// Create a copy of SchedulePerformanceComparisonCharts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? productName = freezed,
    Object? productSymbol = freezed,
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
      productSymbol: freezed == productSymbol
          ? _value.productSymbol
          : productSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: 'product_symbol') this.productSymbol})
      : _data = data;

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
  @override
  @JsonKey(name: 'product_symbol')
  final String? productSymbol;

  @override
  String toString() {
    return 'SchedulePerformanceComparisonCharts(data: $data, startDate: $startDate, endDate: $endDate, productName: $productName, productSymbol: $productSymbol)';
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
            (identical(other.productSymbol, productSymbol) ||
                other.productSymbol == productSymbol));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      startDate,
      endDate,
      productName,
      productSymbol);

  /// Create a copy of SchedulePerformanceComparisonCharts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      @JsonKey(name: 'product_symbol')
      final String? productSymbol}) = _$SchedulePerformanceComparisonChartsImpl;

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
  @JsonKey(name: 'product_symbol')
  String? get productSymbol;

  /// Create a copy of SchedulePerformanceComparisonCharts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SchedulePerformanceComparisonChartsImplCopyWith<
          _$SchedulePerformanceComparisonChartsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'performance')
  int? get performance => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_type')
  dynamic get displayType => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_domestic_type')
  String? get displayDomesticType => throw _privateConstructorUsedError;
  @JsonKey(name: 'month')
  int? get month => throw _privateConstructorUsedError;
  @JsonKey(name: 'year')
  int? get year => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'performance') int? performance,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'display_type') dynamic displayType,
      @JsonKey(name: 'display_domestic_type') String? displayDomesticType,
      @JsonKey(name: 'month') int? month,
      @JsonKey(name: 'year') int? year});
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
    Object? performance = freezed,
    Object? date = freezed,
    Object? displayType = freezed,
    Object? displayDomesticType = freezed,
    Object? month = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      performance: freezed == performance
          ? _value.performance
          : performance // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      displayType: freezed == displayType
          ? _value.displayType
          : displayType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      displayDomesticType: freezed == displayDomesticType
          ? _value.displayDomesticType
          : displayDomesticType // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'performance') int? performance,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'display_type') dynamic displayType,
      @JsonKey(name: 'display_domestic_type') String? displayDomesticType,
      @JsonKey(name: 'month') int? month,
      @JsonKey(name: 'year') int? year});
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
    Object? performance = freezed,
    Object? date = freezed,
    Object? displayType = freezed,
    Object? displayDomesticType = freezed,
    Object? month = freezed,
    Object? year = freezed,
  }) {
    return _then(_$DataImpl(
      performance: freezed == performance
          ? _value.performance
          : performance // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      displayType: freezed == displayType
          ? _value.displayType
          : displayType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      displayDomesticType: freezed == displayDomesticType
          ? _value.displayDomesticType
          : displayDomesticType // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: 'performance') this.performance,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'display_type') this.displayType,
      @JsonKey(name: 'display_domestic_type') this.displayDomesticType,
      @JsonKey(name: 'month') this.month,
      @JsonKey(name: 'year') this.year});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'performance')
  final int? performance;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'display_type')
  final dynamic displayType;
  @override
  @JsonKey(name: 'display_domestic_type')
  final String? displayDomesticType;
  @override
  @JsonKey(name: 'month')
  final int? month;
  @override
  @JsonKey(name: 'year')
  final int? year;

  @override
  String toString() {
    return 'Data(performance: $performance, date: $date, displayType: $displayType, displayDomesticType: $displayDomesticType, month: $month, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.performance, performance) ||
                other.performance == performance) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other.displayType, displayType) &&
            (identical(other.displayDomesticType, displayDomesticType) ||
                other.displayDomesticType == displayDomesticType) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      performance,
      date,
      const DeepCollectionEquality().hash(displayType),
      displayDomesticType,
      month,
      year);

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
      {@JsonKey(name: 'performance') final int? performance,
      @JsonKey(name: 'date') final String? date,
      @JsonKey(name: 'display_type') final dynamic displayType,
      @JsonKey(name: 'display_domestic_type') final String? displayDomesticType,
      @JsonKey(name: 'month') final int? month,
      @JsonKey(name: 'year') final int? year}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'performance')
  int? get performance;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'display_type')
  dynamic get displayType;
  @override
  @JsonKey(name: 'display_domestic_type')
  String? get displayDomesticType;
  @override
  @JsonKey(name: 'month')
  int? get month;
  @override
  @JsonKey(name: 'year')
  int? get year;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
