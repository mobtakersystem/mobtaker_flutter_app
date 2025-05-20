// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enventory_chart_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InventoryChartEntity _$InventoryChartEntityFromJson(Map<String, dynamic> json) {
  return _InventoryChartEntity.fromJson(json);
}

/// @nodoc
mixin _$InventoryChartEntity {
  @JsonKey(name: 'inventoryChart')
  List<InventoryChart>? get inventoryChart =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryChartEntityCopyWith<InventoryChartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryChartEntityCopyWith<$Res> {
  factory $InventoryChartEntityCopyWith(InventoryChartEntity value,
          $Res Function(InventoryChartEntity) then) =
      _$InventoryChartEntityCopyWithImpl<$Res, InventoryChartEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'inventoryChart') List<InventoryChart>? inventoryChart});
}

/// @nodoc
class _$InventoryChartEntityCopyWithImpl<$Res,
        $Val extends InventoryChartEntity>
    implements $InventoryChartEntityCopyWith<$Res> {
  _$InventoryChartEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inventoryChart = freezed,
  }) {
    return _then(_value.copyWith(
      inventoryChart: freezed == inventoryChart
          ? _value.inventoryChart
          : inventoryChart // ignore: cast_nullable_to_non_nullable
              as List<InventoryChart>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InventoryChartEntityImplCopyWith<$Res>
    implements $InventoryChartEntityCopyWith<$Res> {
  factory _$$InventoryChartEntityImplCopyWith(_$InventoryChartEntityImpl value,
          $Res Function(_$InventoryChartEntityImpl) then) =
      __$$InventoryChartEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'inventoryChart') List<InventoryChart>? inventoryChart});
}

/// @nodoc
class __$$InventoryChartEntityImplCopyWithImpl<$Res>
    extends _$InventoryChartEntityCopyWithImpl<$Res, _$InventoryChartEntityImpl>
    implements _$$InventoryChartEntityImplCopyWith<$Res> {
  __$$InventoryChartEntityImplCopyWithImpl(_$InventoryChartEntityImpl _value,
      $Res Function(_$InventoryChartEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inventoryChart = freezed,
  }) {
    return _then(_$InventoryChartEntityImpl(
      inventoryChart: freezed == inventoryChart
          ? _value._inventoryChart
          : inventoryChart // ignore: cast_nullable_to_non_nullable
              as List<InventoryChart>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryChartEntityImpl implements _InventoryChartEntity {
  const _$InventoryChartEntityImpl(
      {@JsonKey(name: 'inventoryChart')
      final List<InventoryChart>? inventoryChart})
      : _inventoryChart = inventoryChart;

  factory _$InventoryChartEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryChartEntityImplFromJson(json);

  final List<InventoryChart>? _inventoryChart;
  @override
  @JsonKey(name: 'inventoryChart')
  List<InventoryChart>? get inventoryChart {
    final value = _inventoryChart;
    if (value == null) return null;
    if (_inventoryChart is EqualUnmodifiableListView) return _inventoryChart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InventoryChartEntity(inventoryChart: $inventoryChart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryChartEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._inventoryChart, _inventoryChart));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_inventoryChart));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryChartEntityImplCopyWith<_$InventoryChartEntityImpl>
      get copyWith =>
          __$$InventoryChartEntityImplCopyWithImpl<_$InventoryChartEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryChartEntityImplToJson(
      this,
    );
  }
}

abstract class _InventoryChartEntity implements InventoryChartEntity {
  const factory _InventoryChartEntity(
      {@JsonKey(name: 'inventoryChart')
      final List<InventoryChart>? inventoryChart}) = _$InventoryChartEntityImpl;

  factory _InventoryChartEntity.fromJson(Map<String, dynamic> json) =
      _$InventoryChartEntityImpl.fromJson;

  @override
  @JsonKey(name: 'inventoryChart')
  List<InventoryChart>? get inventoryChart;
  @override
  @JsonKey(ignore: true)
  _$$InventoryChartEntityImplCopyWith<_$InventoryChartEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InventoryChart _$InventoryChartFromJson(Map<String, dynamic> json) {
  return _InventoryChart.fromJson(json);
}

/// @nodoc
mixin _$InventoryChart {
  @JsonKey(name: 'product_name')
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_symbol')
  String? get productSymbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_inventory')
  int? get currentInventory => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_inventory')
  int? get totalInventory => throw _privateConstructorUsedError;
  @JsonKey(name: 'buy_commitment')
  int? get buyCommitment => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_commitment')
  int? get saleCommitment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryChartCopyWith<InventoryChart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryChartCopyWith<$Res> {
  factory $InventoryChartCopyWith(
          InventoryChart value, $Res Function(InventoryChart) then) =
      _$InventoryChartCopyWithImpl<$Res, InventoryChart>;
  @useResult
  $Res call(
      {@JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_symbol') String? productSymbol,
      @JsonKey(name: 'current_inventory') int? currentInventory,
      @JsonKey(name: 'total_inventory') int? totalInventory,
      @JsonKey(name: 'buy_commitment') int? buyCommitment,
      @JsonKey(name: 'sale_commitment') int? saleCommitment});
}

/// @nodoc
class _$InventoryChartCopyWithImpl<$Res, $Val extends InventoryChart>
    implements $InventoryChartCopyWith<$Res> {
  _$InventoryChartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = freezed,
    Object? productSymbol = freezed,
    Object? currentInventory = freezed,
    Object? totalInventory = freezed,
    Object? buyCommitment = freezed,
    Object? saleCommitment = freezed,
  }) {
    return _then(_value.copyWith(
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productSymbol: freezed == productSymbol
          ? _value.productSymbol
          : productSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currentInventory: freezed == currentInventory
          ? _value.currentInventory
          : currentInventory // ignore: cast_nullable_to_non_nullable
              as int?,
      totalInventory: freezed == totalInventory
          ? _value.totalInventory
          : totalInventory // ignore: cast_nullable_to_non_nullable
              as int?,
      buyCommitment: freezed == buyCommitment
          ? _value.buyCommitment
          : buyCommitment // ignore: cast_nullable_to_non_nullable
              as int?,
      saleCommitment: freezed == saleCommitment
          ? _value.saleCommitment
          : saleCommitment // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InventoryChartImplCopyWith<$Res>
    implements $InventoryChartCopyWith<$Res> {
  factory _$$InventoryChartImplCopyWith(_$InventoryChartImpl value,
          $Res Function(_$InventoryChartImpl) then) =
      __$$InventoryChartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_symbol') String? productSymbol,
      @JsonKey(name: 'current_inventory') int? currentInventory,
      @JsonKey(name: 'total_inventory') int? totalInventory,
      @JsonKey(name: 'buy_commitment') int? buyCommitment,
      @JsonKey(name: 'sale_commitment') int? saleCommitment});
}

/// @nodoc
class __$$InventoryChartImplCopyWithImpl<$Res>
    extends _$InventoryChartCopyWithImpl<$Res, _$InventoryChartImpl>
    implements _$$InventoryChartImplCopyWith<$Res> {
  __$$InventoryChartImplCopyWithImpl(
      _$InventoryChartImpl _value, $Res Function(_$InventoryChartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = freezed,
    Object? productSymbol = freezed,
    Object? currentInventory = freezed,
    Object? totalInventory = freezed,
    Object? buyCommitment = freezed,
    Object? saleCommitment = freezed,
  }) {
    return _then(_$InventoryChartImpl(
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productSymbol: freezed == productSymbol
          ? _value.productSymbol
          : productSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currentInventory: freezed == currentInventory
          ? _value.currentInventory
          : currentInventory // ignore: cast_nullable_to_non_nullable
              as int?,
      totalInventory: freezed == totalInventory
          ? _value.totalInventory
          : totalInventory // ignore: cast_nullable_to_non_nullable
              as int?,
      buyCommitment: freezed == buyCommitment
          ? _value.buyCommitment
          : buyCommitment // ignore: cast_nullable_to_non_nullable
              as int?,
      saleCommitment: freezed == saleCommitment
          ? _value.saleCommitment
          : saleCommitment // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryChartImpl implements _InventoryChart {
  const _$InventoryChartImpl(
      {@JsonKey(name: 'product_name') this.productName,
      @JsonKey(name: 'product_symbol') this.productSymbol,
      @JsonKey(name: 'current_inventory') this.currentInventory,
      @JsonKey(name: 'total_inventory') this.totalInventory,
      @JsonKey(name: 'buy_commitment') this.buyCommitment,
      @JsonKey(name: 'sale_commitment') this.saleCommitment});

  factory _$InventoryChartImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryChartImplFromJson(json);

  @override
  @JsonKey(name: 'product_name')
  final String? productName;
  @override
  @JsonKey(name: 'product_symbol')
  final String? productSymbol;
  @override
  @JsonKey(name: 'current_inventory')
  final int? currentInventory;
  @override
  @JsonKey(name: 'total_inventory')
  final int? totalInventory;
  @override
  @JsonKey(name: 'buy_commitment')
  final int? buyCommitment;
  @override
  @JsonKey(name: 'sale_commitment')
  final int? saleCommitment;

  @override
  String toString() {
    return 'InventoryChart(productName: $productName, productSymbol: $productSymbol, currentInventory: $currentInventory, totalInventory: $totalInventory, buyCommitment: $buyCommitment, saleCommitment: $saleCommitment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryChartImpl &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productSymbol, productSymbol) ||
                other.productSymbol == productSymbol) &&
            (identical(other.currentInventory, currentInventory) ||
                other.currentInventory == currentInventory) &&
            (identical(other.totalInventory, totalInventory) ||
                other.totalInventory == totalInventory) &&
            (identical(other.buyCommitment, buyCommitment) ||
                other.buyCommitment == buyCommitment) &&
            (identical(other.saleCommitment, saleCommitment) ||
                other.saleCommitment == saleCommitment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productName, productSymbol,
      currentInventory, totalInventory, buyCommitment, saleCommitment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryChartImplCopyWith<_$InventoryChartImpl> get copyWith =>
      __$$InventoryChartImplCopyWithImpl<_$InventoryChartImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryChartImplToJson(
      this,
    );
  }
}

abstract class _InventoryChart implements InventoryChart {
  const factory _InventoryChart(
          {@JsonKey(name: 'product_name') final String? productName,
          @JsonKey(name: 'product_symbol') final String? productSymbol,
          @JsonKey(name: 'current_inventory') final int? currentInventory,
          @JsonKey(name: 'total_inventory') final int? totalInventory,
          @JsonKey(name: 'buy_commitment') final int? buyCommitment,
          @JsonKey(name: 'sale_commitment') final int? saleCommitment}) =
      _$InventoryChartImpl;

  factory _InventoryChart.fromJson(Map<String, dynamic> json) =
      _$InventoryChartImpl.fromJson;

  @override
  @JsonKey(name: 'product_name')
  String? get productName;
  @override
  @JsonKey(name: 'product_symbol')
  String? get productSymbol;
  @override
  @JsonKey(name: 'current_inventory')
  int? get currentInventory;
  @override
  @JsonKey(name: 'total_inventory')
  int? get totalInventory;
  @override
  @JsonKey(name: 'buy_commitment')
  int? get buyCommitment;
  @override
  @JsonKey(name: 'sale_commitment')
  int? get saleCommitment;
  @override
  @JsonKey(ignore: true)
  _$$InventoryChartImplCopyWith<_$InventoryChartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
