// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_property_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getProjectPropertyHash() =>
    r'4277a44ce8c1de8c313e1a8239e0ccd213b91a70';

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

/// See also [getProjectProperty].
@ProviderFor(getProjectProperty)
const getProjectPropertyProvider = GetProjectPropertyFamily();

/// See also [getProjectProperty].
class GetProjectPropertyFamily
    extends Family<AsyncValue<ResultData<ProjectPropertyEntity>>> {
  /// See also [getProjectProperty].
  const GetProjectPropertyFamily();

  /// See also [getProjectProperty].
  GetProjectPropertyProvider call(
    String id,
  ) {
    return GetProjectPropertyProvider(
      id,
    );
  }

  @override
  GetProjectPropertyProvider getProviderOverride(
    covariant GetProjectPropertyProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'getProjectPropertyProvider';
}

/// See also [getProjectProperty].
class GetProjectPropertyProvider
    extends AutoDisposeStreamProvider<ResultData<ProjectPropertyEntity>> {
  /// See also [getProjectProperty].
  GetProjectPropertyProvider(
    String id,
  ) : this._internal(
          (ref) => getProjectProperty(
            ref as GetProjectPropertyRef,
            id,
          ),
          from: getProjectPropertyProvider,
          name: r'getProjectPropertyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getProjectPropertyHash,
          dependencies: GetProjectPropertyFamily._dependencies,
          allTransitiveDependencies:
              GetProjectPropertyFamily._allTransitiveDependencies,
          id: id,
        );

  GetProjectPropertyProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    Stream<ResultData<ProjectPropertyEntity>> Function(
            GetProjectPropertyRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetProjectPropertyProvider._internal(
        (ref) => create(ref as GetProjectPropertyRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<ResultData<ProjectPropertyEntity>>
      createElement() {
    return _GetProjectPropertyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetProjectPropertyProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetProjectPropertyRef
    on AutoDisposeStreamProviderRef<ResultData<ProjectPropertyEntity>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetProjectPropertyProviderElement
    extends AutoDisposeStreamProviderElement<ResultData<ProjectPropertyEntity>>
    with GetProjectPropertyRef {
  _GetProjectPropertyProviderElement(super.provider);

  @override
  String get id => (origin as GetProjectPropertyProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
