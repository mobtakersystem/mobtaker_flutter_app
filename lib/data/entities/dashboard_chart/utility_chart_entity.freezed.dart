// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'utility_chart_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UtilityChartEntity _$UtilityChartEntityFromJson(Map<String, dynamic> json) {
  return _UtilityChartEntity.fromJson(json);
}

/// @nodoc
mixin _$UtilityChartEntity {
  @JsonKey(name: 'utility_chart')
  List<UtilityChart>? get utilityChart => throw _privateConstructorUsedError;
  @JsonKey(name: 'utility_products')
  List<UtilityProducts>? get utilityProducts =>
      throw _privateConstructorUsedError;

  /// Serializes this UtilityChartEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UtilityChartEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UtilityChartEntityCopyWith<UtilityChartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UtilityChartEntityCopyWith<$Res> {
  factory $UtilityChartEntityCopyWith(
          UtilityChartEntity value, $Res Function(UtilityChartEntity) then) =
      _$UtilityChartEntityCopyWithImpl<$Res, UtilityChartEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'utility_chart') List<UtilityChart>? utilityChart,
      @JsonKey(name: 'utility_products')
      List<UtilityProducts>? utilityProducts});
}

/// @nodoc
class _$UtilityChartEntityCopyWithImpl<$Res, $Val extends UtilityChartEntity>
    implements $UtilityChartEntityCopyWith<$Res> {
  _$UtilityChartEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UtilityChartEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? utilityChart = freezed,
    Object? utilityProducts = freezed,
  }) {
    return _then(_value.copyWith(
      utilityChart: freezed == utilityChart
          ? _value.utilityChart
          : utilityChart // ignore: cast_nullable_to_non_nullable
              as List<UtilityChart>?,
      utilityProducts: freezed == utilityProducts
          ? _value.utilityProducts
          : utilityProducts // ignore: cast_nullable_to_non_nullable
              as List<UtilityProducts>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UtilityChartEntityImplCopyWith<$Res>
    implements $UtilityChartEntityCopyWith<$Res> {
  factory _$$UtilityChartEntityImplCopyWith(_$UtilityChartEntityImpl value,
          $Res Function(_$UtilityChartEntityImpl) then) =
      __$$UtilityChartEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'utility_chart') List<UtilityChart>? utilityChart,
      @JsonKey(name: 'utility_products')
      List<UtilityProducts>? utilityProducts});
}

/// @nodoc
class __$$UtilityChartEntityImplCopyWithImpl<$Res>
    extends _$UtilityChartEntityCopyWithImpl<$Res, _$UtilityChartEntityImpl>
    implements _$$UtilityChartEntityImplCopyWith<$Res> {
  __$$UtilityChartEntityImplCopyWithImpl(_$UtilityChartEntityImpl _value,
      $Res Function(_$UtilityChartEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UtilityChartEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? utilityChart = freezed,
    Object? utilityProducts = freezed,
  }) {
    return _then(_$UtilityChartEntityImpl(
      utilityChart: freezed == utilityChart
          ? _value._utilityChart
          : utilityChart // ignore: cast_nullable_to_non_nullable
              as List<UtilityChart>?,
      utilityProducts: freezed == utilityProducts
          ? _value._utilityProducts
          : utilityProducts // ignore: cast_nullable_to_non_nullable
              as List<UtilityProducts>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UtilityChartEntityImpl implements _UtilityChartEntity {
  const _$UtilityChartEntityImpl(
      {@JsonKey(name: 'utility_chart') final List<UtilityChart>? utilityChart,
      @JsonKey(name: 'utility_products')
      final List<UtilityProducts>? utilityProducts})
      : _utilityChart = utilityChart,
        _utilityProducts = utilityProducts;

  factory _$UtilityChartEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UtilityChartEntityImplFromJson(json);

  final List<UtilityChart>? _utilityChart;
  @override
  @JsonKey(name: 'utility_chart')
  List<UtilityChart>? get utilityChart {
    final value = _utilityChart;
    if (value == null) return null;
    if (_utilityChart is EqualUnmodifiableListView) return _utilityChart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UtilityProducts>? _utilityProducts;
  @override
  @JsonKey(name: 'utility_products')
  List<UtilityProducts>? get utilityProducts {
    final value = _utilityProducts;
    if (value == null) return null;
    if (_utilityProducts is EqualUnmodifiableListView) return _utilityProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UtilityChartEntity(utilityChart: $utilityChart, utilityProducts: $utilityProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UtilityChartEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._utilityChart, _utilityChart) &&
            const DeepCollectionEquality()
                .equals(other._utilityProducts, _utilityProducts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_utilityChart),
      const DeepCollectionEquality().hash(_utilityProducts));

  /// Create a copy of UtilityChartEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UtilityChartEntityImplCopyWith<_$UtilityChartEntityImpl> get copyWith =>
      __$$UtilityChartEntityImplCopyWithImpl<_$UtilityChartEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UtilityChartEntityImplToJson(
      this,
    );
  }
}

abstract class _UtilityChartEntity implements UtilityChartEntity {
  const factory _UtilityChartEntity(
      {@JsonKey(name: 'utility_chart') final List<UtilityChart>? utilityChart,
      @JsonKey(name: 'utility_products')
      final List<UtilityProducts>? utilityProducts}) = _$UtilityChartEntityImpl;

  factory _UtilityChartEntity.fromJson(Map<String, dynamic> json) =
      _$UtilityChartEntityImpl.fromJson;

  @override
  @JsonKey(name: 'utility_chart')
  List<UtilityChart>? get utilityChart;
  @override
  @JsonKey(name: 'utility_products')
  List<UtilityProducts>? get utilityProducts;

  /// Create a copy of UtilityChartEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UtilityChartEntityImplCopyWith<_$UtilityChartEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UtilityProducts _$UtilityProductsFromJson(Map<String, dynamic> json) {
  return _UtilityProducts.fromJson(json);
}

/// @nodoc
mixin _$UtilityProducts {
  @JsonKey(name: 'production_product_id')
  String? get productionProductId => throw _privateConstructorUsedError;
  @JsonKey(name: 'utility_product_id')
  String? get utilityProductId => throw _privateConstructorUsedError;
  @JsonKey(name: 'indicator_id')
  String? get indicatorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'priority')
  int? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'product')
  Product? get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'indicator')
  Indicator? get indicator => throw _privateConstructorUsedError;

  /// Serializes this UtilityProducts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UtilityProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UtilityProductsCopyWith<UtilityProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UtilityProductsCopyWith<$Res> {
  factory $UtilityProductsCopyWith(
          UtilityProducts value, $Res Function(UtilityProducts) then) =
      _$UtilityProductsCopyWithImpl<$Res, UtilityProducts>;
  @useResult
  $Res call(
      {@JsonKey(name: 'production_product_id') String? productionProductId,
      @JsonKey(name: 'utility_product_id') String? utilityProductId,
      @JsonKey(name: 'indicator_id') String? indicatorId,
      @JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'priority') int? priority,
      @JsonKey(name: 'product') Product? product,
      @JsonKey(name: 'indicator') Indicator? indicator});

  $ProductCopyWith<$Res>? get product;
  $IndicatorCopyWith<$Res>? get indicator;
}

/// @nodoc
class _$UtilityProductsCopyWithImpl<$Res, $Val extends UtilityProducts>
    implements $UtilityProductsCopyWith<$Res> {
  _$UtilityProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UtilityProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productionProductId = freezed,
    Object? utilityProductId = freezed,
    Object? indicatorId = freezed,
    Object? displayName = freezed,
    Object? priority = freezed,
    Object? product = freezed,
    Object? indicator = freezed,
  }) {
    return _then(_value.copyWith(
      productionProductId: freezed == productionProductId
          ? _value.productionProductId
          : productionProductId // ignore: cast_nullable_to_non_nullable
              as String?,
      utilityProductId: freezed == utilityProductId
          ? _value.utilityProductId
          : utilityProductId // ignore: cast_nullable_to_non_nullable
              as String?,
      indicatorId: freezed == indicatorId
          ? _value.indicatorId
          : indicatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      indicator: freezed == indicator
          ? _value.indicator
          : indicator // ignore: cast_nullable_to_non_nullable
              as Indicator?,
    ) as $Val);
  }

  /// Create a copy of UtilityProducts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  /// Create a copy of UtilityProducts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IndicatorCopyWith<$Res>? get indicator {
    if (_value.indicator == null) {
      return null;
    }

    return $IndicatorCopyWith<$Res>(_value.indicator!, (value) {
      return _then(_value.copyWith(indicator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UtilityProductsImplCopyWith<$Res>
    implements $UtilityProductsCopyWith<$Res> {
  factory _$$UtilityProductsImplCopyWith(_$UtilityProductsImpl value,
          $Res Function(_$UtilityProductsImpl) then) =
      __$$UtilityProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'production_product_id') String? productionProductId,
      @JsonKey(name: 'utility_product_id') String? utilityProductId,
      @JsonKey(name: 'indicator_id') String? indicatorId,
      @JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'priority') int? priority,
      @JsonKey(name: 'product') Product? product,
      @JsonKey(name: 'indicator') Indicator? indicator});

  @override
  $ProductCopyWith<$Res>? get product;
  @override
  $IndicatorCopyWith<$Res>? get indicator;
}

/// @nodoc
class __$$UtilityProductsImplCopyWithImpl<$Res>
    extends _$UtilityProductsCopyWithImpl<$Res, _$UtilityProductsImpl>
    implements _$$UtilityProductsImplCopyWith<$Res> {
  __$$UtilityProductsImplCopyWithImpl(
      _$UtilityProductsImpl _value, $Res Function(_$UtilityProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UtilityProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productionProductId = freezed,
    Object? utilityProductId = freezed,
    Object? indicatorId = freezed,
    Object? displayName = freezed,
    Object? priority = freezed,
    Object? product = freezed,
    Object? indicator = freezed,
  }) {
    return _then(_$UtilityProductsImpl(
      productionProductId: freezed == productionProductId
          ? _value.productionProductId
          : productionProductId // ignore: cast_nullable_to_non_nullable
              as String?,
      utilityProductId: freezed == utilityProductId
          ? _value.utilityProductId
          : utilityProductId // ignore: cast_nullable_to_non_nullable
              as String?,
      indicatorId: freezed == indicatorId
          ? _value.indicatorId
          : indicatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      indicator: freezed == indicator
          ? _value.indicator
          : indicator // ignore: cast_nullable_to_non_nullable
              as Indicator?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UtilityProductsImpl implements _UtilityProducts {
  const _$UtilityProductsImpl(
      {@JsonKey(name: 'production_product_id') this.productionProductId,
      @JsonKey(name: 'utility_product_id') this.utilityProductId,
      @JsonKey(name: 'indicator_id') this.indicatorId,
      @JsonKey(name: 'display_name') this.displayName,
      @JsonKey(name: 'priority') this.priority,
      @JsonKey(name: 'product') this.product,
      @JsonKey(name: 'indicator') this.indicator});

  factory _$UtilityProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UtilityProductsImplFromJson(json);

  @override
  @JsonKey(name: 'production_product_id')
  final String? productionProductId;
  @override
  @JsonKey(name: 'utility_product_id')
  final String? utilityProductId;
  @override
  @JsonKey(name: 'indicator_id')
  final String? indicatorId;
  @override
  @JsonKey(name: 'display_name')
  final String? displayName;
  @override
  @JsonKey(name: 'priority')
  final int? priority;
  @override
  @JsonKey(name: 'product')
  final Product? product;
  @override
  @JsonKey(name: 'indicator')
  final Indicator? indicator;

  @override
  String toString() {
    return 'UtilityProducts(productionProductId: $productionProductId, utilityProductId: $utilityProductId, indicatorId: $indicatorId, displayName: $displayName, priority: $priority, product: $product, indicator: $indicator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UtilityProductsImpl &&
            (identical(other.productionProductId, productionProductId) ||
                other.productionProductId == productionProductId) &&
            (identical(other.utilityProductId, utilityProductId) ||
                other.utilityProductId == utilityProductId) &&
            (identical(other.indicatorId, indicatorId) ||
                other.indicatorId == indicatorId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.indicator, indicator) ||
                other.indicator == indicator));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productionProductId,
      utilityProductId, indicatorId, displayName, priority, product, indicator);

  /// Create a copy of UtilityProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UtilityProductsImplCopyWith<_$UtilityProductsImpl> get copyWith =>
      __$$UtilityProductsImplCopyWithImpl<_$UtilityProductsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UtilityProductsImplToJson(
      this,
    );
  }
}

abstract class _UtilityProducts implements UtilityProducts {
  const factory _UtilityProducts(
          {@JsonKey(name: 'production_product_id')
          final String? productionProductId,
          @JsonKey(name: 'utility_product_id') final String? utilityProductId,
          @JsonKey(name: 'indicator_id') final String? indicatorId,
          @JsonKey(name: 'display_name') final String? displayName,
          @JsonKey(name: 'priority') final int? priority,
          @JsonKey(name: 'product') final Product? product,
          @JsonKey(name: 'indicator') final Indicator? indicator}) =
      _$UtilityProductsImpl;

  factory _UtilityProducts.fromJson(Map<String, dynamic> json) =
      _$UtilityProductsImpl.fromJson;

  @override
  @JsonKey(name: 'production_product_id')
  String? get productionProductId;
  @override
  @JsonKey(name: 'utility_product_id')
  String? get utilityProductId;
  @override
  @JsonKey(name: 'indicator_id')
  String? get indicatorId;
  @override
  @JsonKey(name: 'display_name')
  String? get displayName;
  @override
  @JsonKey(name: 'priority')
  int? get priority;
  @override
  @JsonKey(name: 'product')
  Product? get product;
  @override
  @JsonKey(name: 'indicator')
  Indicator? get indicator;

  /// Create a copy of UtilityProducts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UtilityProductsImplCopyWith<_$UtilityProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Indicator _$IndicatorFromJson(Map<String, dynamic> json) {
  return _Indicator.fromJson(json);
}

/// @nodoc
mixin _$Indicator {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'symbol')
  dynamic get symbol => throw _privateConstructorUsedError;

  /// Serializes this Indicator to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Indicator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IndicatorCopyWith<Indicator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndicatorCopyWith<$Res> {
  factory $IndicatorCopyWith(Indicator value, $Res Function(Indicator) then) =
      _$IndicatorCopyWithImpl<$Res, Indicator>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'symbol') dynamic symbol});
}

/// @nodoc
class _$IndicatorCopyWithImpl<$Res, $Val extends Indicator>
    implements $IndicatorCopyWith<$Res> {
  _$IndicatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Indicator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? displayName = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndicatorImplCopyWith<$Res>
    implements $IndicatorCopyWith<$Res> {
  factory _$$IndicatorImplCopyWith(
          _$IndicatorImpl value, $Res Function(_$IndicatorImpl) then) =
      __$$IndicatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'symbol') dynamic symbol});
}

/// @nodoc
class __$$IndicatorImplCopyWithImpl<$Res>
    extends _$IndicatorCopyWithImpl<$Res, _$IndicatorImpl>
    implements _$$IndicatorImplCopyWith<$Res> {
  __$$IndicatorImplCopyWithImpl(
      _$IndicatorImpl _value, $Res Function(_$IndicatorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Indicator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? displayName = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_$IndicatorImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndicatorImpl implements _Indicator {
  const _$IndicatorImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'display_name') this.displayName,
      @JsonKey(name: 'symbol') this.symbol});

  factory _$IndicatorImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndicatorImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'display_name')
  final String? displayName;
  @override
  @JsonKey(name: 'symbol')
  final dynamic symbol;

  @override
  String toString() {
    return 'Indicator(id: $id, displayName: $displayName, symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndicatorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            const DeepCollectionEquality().equals(other.symbol, symbol));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, displayName,
      const DeepCollectionEquality().hash(symbol));

  /// Create a copy of Indicator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IndicatorImplCopyWith<_$IndicatorImpl> get copyWith =>
      __$$IndicatorImplCopyWithImpl<_$IndicatorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndicatorImplToJson(
      this,
    );
  }
}

abstract class _Indicator implements Indicator {
  const factory _Indicator(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'display_name') final String? displayName,
      @JsonKey(name: 'symbol') final dynamic symbol}) = _$IndicatorImpl;

  factory _Indicator.fromJson(Map<String, dynamic> json) =
      _$IndicatorImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'display_name')
  String? get displayName;
  @override
  @JsonKey(name: 'symbol')
  dynamic get symbol;

  /// Create a copy of Indicator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IndicatorImplCopyWith<_$IndicatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'symbol')
  String? get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'priority')
  int? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_status')
  String? get displayStatus => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'symbol') String? symbol,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'priority') int? priority,
      @JsonKey(name: 'display_status') String? displayStatus});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? displayStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      displayStatus: freezed == displayStatus
          ? _value.displayStatus
          : displayStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'symbol') String? symbol,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'priority') int? priority,
      @JsonKey(name: 'display_status') String? displayStatus});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? displayStatus = freezed,
  }) {
    return _then(_$ProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      displayStatus: freezed == displayStatus
          ? _value.displayStatus
          : displayStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'symbol') this.symbol,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'priority') this.priority,
      @JsonKey(name: 'display_status') this.displayStatus});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'symbol')
  final String? symbol;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'priority')
  final int? priority;
  @override
  @JsonKey(name: 'display_status')
  final String? displayStatus;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, symbol: $symbol, status: $status, priority: $priority, displayStatus: $displayStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.displayStatus, displayStatus) ||
                other.displayStatus == displayStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, symbol, status, priority, displayStatus);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'symbol') final String? symbol,
          @JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'priority') final int? priority,
          @JsonKey(name: 'display_status') final String? displayStatus}) =
      _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'symbol')
  String? get symbol;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'priority')
  int? get priority;
  @override
  @JsonKey(name: 'display_status')
  String? get displayStatus;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UtilityChart _$UtilityChartFromJson(Map<String, dynamic> json) {
  return _UtilityChart.fromJson(json);
}

/// @nodoc
mixin _$UtilityChart {
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

  /// Serializes this UtilityChart to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UtilityChart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UtilityChartCopyWith<UtilityChart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UtilityChartCopyWith<$Res> {
  factory $UtilityChartCopyWith(
          UtilityChart value, $Res Function(UtilityChart) then) =
      _$UtilityChartCopyWithImpl<$Res, UtilityChart>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<Data>? data,
      @JsonKey(name: 'start_date') @DateJsonParser() DateTime? startDate,
      @JsonKey(name: 'end_date') @DateJsonParser() DateTime? endDate,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_symbol') String? productSymbol});
}

/// @nodoc
class _$UtilityChartCopyWithImpl<$Res, $Val extends UtilityChart>
    implements $UtilityChartCopyWith<$Res> {
  _$UtilityChartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UtilityChart
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
abstract class _$$UtilityChartImplCopyWith<$Res>
    implements $UtilityChartCopyWith<$Res> {
  factory _$$UtilityChartImplCopyWith(
          _$UtilityChartImpl value, $Res Function(_$UtilityChartImpl) then) =
      __$$UtilityChartImplCopyWithImpl<$Res>;
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
class __$$UtilityChartImplCopyWithImpl<$Res>
    extends _$UtilityChartCopyWithImpl<$Res, _$UtilityChartImpl>
    implements _$$UtilityChartImplCopyWith<$Res> {
  __$$UtilityChartImplCopyWithImpl(
      _$UtilityChartImpl _value, $Res Function(_$UtilityChartImpl) _then)
      : super(_value, _then);

  /// Create a copy of UtilityChart
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
    return _then(_$UtilityChartImpl(
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
class _$UtilityChartImpl implements _UtilityChart {
  const _$UtilityChartImpl(
      {@JsonKey(name: 'data') final List<Data>? data,
      @JsonKey(name: 'start_date') @DateJsonParser() this.startDate,
      @JsonKey(name: 'end_date') @DateJsonParser() this.endDate,
      @JsonKey(name: 'product_name') this.productName,
      @JsonKey(name: 'product_symbol') this.productSymbol})
      : _data = data;

  factory _$UtilityChartImpl.fromJson(Map<String, dynamic> json) =>
      _$$UtilityChartImplFromJson(json);

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
    return 'UtilityChart(data: $data, startDate: $startDate, endDate: $endDate, productName: $productName, productSymbol: $productSymbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UtilityChartImpl &&
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

  /// Create a copy of UtilityChart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UtilityChartImplCopyWith<_$UtilityChartImpl> get copyWith =>
      __$$UtilityChartImplCopyWithImpl<_$UtilityChartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UtilityChartImplToJson(
      this,
    );
  }
}

abstract class _UtilityChart implements UtilityChart {
  const factory _UtilityChart(
      {@JsonKey(name: 'data') final List<Data>? data,
      @JsonKey(name: 'start_date') @DateJsonParser() final DateTime? startDate,
      @JsonKey(name: 'end_date') @DateJsonParser() final DateTime? endDate,
      @JsonKey(name: 'product_name') final String? productName,
      @JsonKey(name: 'product_symbol')
      final String? productSymbol}) = _$UtilityChartImpl;

  factory _UtilityChart.fromJson(Map<String, dynamic> json) =
      _$UtilityChartImpl.fromJson;

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

  /// Create a copy of UtilityChart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UtilityChartImplCopyWith<_$UtilityChartImpl> get copyWith =>
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
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'schedule') int? schedule,
      @JsonKey(name: 'performance') int? performance,
      @JsonKey(name: 'deviation') int? deviation});
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
    Object? date = freezed,
    Object? schedule = freezed,
    Object? performance = freezed,
    Object? deviation = freezed,
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
      @JsonKey(name: 'deviation') int? deviation});
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
    Object? date = freezed,
    Object? schedule = freezed,
    Object? performance = freezed,
    Object? deviation = freezed,
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
      @JsonKey(name: 'deviation') this.deviation});

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
  String toString() {
    return 'Data(date: $date, schedule: $schedule, performance: $performance, deviation: $deviation)';
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
                other.deviation == deviation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, schedule, performance, deviation);

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
      {@JsonKey(name: 'date') final String? date,
      @JsonKey(name: 'schedule') final int? schedule,
      @JsonKey(name: 'performance') final int? performance,
      @JsonKey(name: 'deviation') final int? deviation}) = _$DataImpl;

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

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
