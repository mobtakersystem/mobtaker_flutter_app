// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utility_chart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$utilityChartHash() => r'533726af809e83ba364d85704c8775049c5bdc28';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$UtilityChart
    extends BuildlessAutoDisposeAsyncNotifier<ResultData<UtilityChartEntity>> {
  late final String? productId;

  FutureOr<ResultData<UtilityChartEntity>> build(
    String? productId,
  );
}

/// See also [UtilityChart].
@ProviderFor(UtilityChart)
const utilityChartProvider = UtilityChartFamily();

/// See also [UtilityChart].
class UtilityChartFamily
    extends Family<AsyncValue<ResultData<UtilityChartEntity>>> {
  /// See also [UtilityChart].
  const UtilityChartFamily();

  /// See also [UtilityChart].
  UtilityChartProvider call(
    String? productId,
  ) {
    return UtilityChartProvider(
      productId,
    );
  }

  @override
  UtilityChartProvider getProviderOverride(
    covariant UtilityChartProvider provider,
  ) {
    return call(
      provider.productId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'utilityChartProvider';
}

/// See also [UtilityChart].
class UtilityChartProvider extends AutoDisposeAsyncNotifierProviderImpl<
    UtilityChart, ResultData<UtilityChartEntity>> {
  /// See also [UtilityChart].
  UtilityChartProvider(
    String? productId,
  ) : this._internal(
          () => UtilityChart()..productId = productId,
          from: utilityChartProvider,
          name: r'utilityChartProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$utilityChartHash,
          dependencies: UtilityChartFamily._dependencies,
          allTransitiveDependencies:
              UtilityChartFamily._allTransitiveDependencies,
          productId: productId,
        );

  UtilityChartProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productId,
  }) : super.internal();

  final String? productId;

  @override
  FutureOr<ResultData<UtilityChartEntity>> runNotifierBuild(
    covariant UtilityChart notifier,
  ) {
    return notifier.build(
      productId,
    );
  }

  @override
  Override overrideWith(UtilityChart Function() create) {
    return ProviderOverride(
      origin: this,
      override: UtilityChartProvider._internal(
        () => create()..productId = productId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productId: productId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<UtilityChart,
      ResultData<UtilityChartEntity>> createElement() {
    return _UtilityChartProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UtilityChartProvider && other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UtilityChartRef
    on AutoDisposeAsyncNotifierProviderRef<ResultData<UtilityChartEntity>> {
  /// The parameter `productId` of this provider.
  String? get productId;
}

class _UtilityChartProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UtilityChart,
        ResultData<UtilityChartEntity>> with UtilityChartRef {
  _UtilityChartProviderElement(super.provider);

  @override
  String? get productId => (origin as UtilityChartProvider).productId;
}

String _$utilityProductsHash() => r'9b71c1cda9ed6a821f932deda7999dd25bb24871';

/// See also [UtilityProducts].
@ProviderFor(UtilityProducts)
final utilityProductsProvider = AutoDisposeAsyncNotifierProvider<
    UtilityProducts, ResultData<UtilityChartEntity>>.internal(
  UtilityProducts.new,
  name: r'utilityProductsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$utilityProductsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UtilityProducts
    = AutoDisposeAsyncNotifier<ResultData<UtilityChartEntity>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
