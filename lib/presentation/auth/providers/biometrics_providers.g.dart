// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biometrics_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isLoginBiometricEnableHash() =>
    r'2eeea5eb5eb6839a222829e4c445da35fa6cc435';

/// See also [isLoginBiometricEnable].
@ProviderFor(isLoginBiometricEnable)
final isLoginBiometricEnableProvider = AutoDisposeFutureProvider<bool>.internal(
  isLoginBiometricEnable,
  name: r'isLoginBiometricEnableProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$isLoginBiometricEnableHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsLoginBiometricEnableRef = AutoDisposeFutureProviderRef<bool>;
String _$setLoginBiometricEnableHash() =>
    r'658e29886e94e48e24562c9f016cb85fc32cd99f';

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

///set biometric login enable
///
/// Copied from [setLoginBiometricEnable].
@ProviderFor(setLoginBiometricEnable)
const setLoginBiometricEnableProvider = SetLoginBiometricEnableFamily();

///set biometric login enable
///
/// Copied from [setLoginBiometricEnable].
class SetLoginBiometricEnableFamily extends Family<AsyncValue<bool>> {
  ///set biometric login enable
  ///
  /// Copied from [setLoginBiometricEnable].
  const SetLoginBiometricEnableFamily();

  ///set biometric login enable
  ///
  /// Copied from [setLoginBiometricEnable].
  SetLoginBiometricEnableProvider call(
    bool isEnable,
  ) {
    return SetLoginBiometricEnableProvider(
      isEnable,
    );
  }

  @override
  SetLoginBiometricEnableProvider getProviderOverride(
    covariant SetLoginBiometricEnableProvider provider,
  ) {
    return call(
      provider.isEnable,
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
  String? get name => r'setLoginBiometricEnableProvider';
}

///set biometric login enable
///
/// Copied from [setLoginBiometricEnable].
class SetLoginBiometricEnableProvider extends AutoDisposeFutureProvider<bool> {
  ///set biometric login enable
  ///
  /// Copied from [setLoginBiometricEnable].
  SetLoginBiometricEnableProvider(
    bool isEnable,
  ) : this._internal(
          (ref) => setLoginBiometricEnable(
            ref as SetLoginBiometricEnableRef,
            isEnable,
          ),
          from: setLoginBiometricEnableProvider,
          name: r'setLoginBiometricEnableProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setLoginBiometricEnableHash,
          dependencies: SetLoginBiometricEnableFamily._dependencies,
          allTransitiveDependencies:
              SetLoginBiometricEnableFamily._allTransitiveDependencies,
          isEnable: isEnable,
        );

  SetLoginBiometricEnableProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.isEnable,
  }) : super.internal();

  final bool isEnable;

  @override
  Override overrideWith(
    FutureOr<bool> Function(SetLoginBiometricEnableRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SetLoginBiometricEnableProvider._internal(
        (ref) => create(ref as SetLoginBiometricEnableRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        isEnable: isEnable,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _SetLoginBiometricEnableProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SetLoginBiometricEnableProvider &&
        other.isEnable == isEnable;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, isEnable.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SetLoginBiometricEnableRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `isEnable` of this provider.
  bool get isEnable;
}

class _SetLoginBiometricEnableProviderElement
    extends AutoDisposeFutureProviderElement<bool>
    with SetLoginBiometricEnableRef {
  _SetLoginBiometricEnableProviderElement(super.provider);

  @override
  bool get isEnable => (origin as SetLoginBiometricEnableProvider).isEnable;
}

String _$localAuthHash() => r'bbf192b2ad1b9c7d1ddfe510e02bae2bb4b66ff8';

/// See also [localAuth].
@ProviderFor(localAuth)
final localAuthProvider = AutoDisposeProvider<LocalAuthentication>.internal(
  localAuth,
  name: r'localAuthProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$localAuthHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LocalAuthRef = AutoDisposeProviderRef<LocalAuthentication>;
String _$biometricAvailableHash() =>
    r'681a66562d18541c2ae0cdb0da8a7d9c4757175f';

/// See also [biometricAvailable].
@ProviderFor(biometricAvailable)
final biometricAvailableProvider = AutoDisposeFutureProvider<bool>.internal(
  biometricAvailable,
  name: r'biometricAvailableProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$biometricAvailableHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef BiometricAvailableRef = AutoDisposeFutureProviderRef<bool>;
String _$biometricTypeHash() => r'0e1f647dae429da0e4bc963528cdfabbb02efb37';

/// type of biometric available
///
/// Copied from [biometricType].
@ProviderFor(biometricType)
final biometricTypeProvider =
    AutoDisposeFutureProvider<List<BiometricType>>.internal(
  biometricType,
  name: r'biometricTypeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$biometricTypeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef BiometricTypeRef = AutoDisposeFutureProviderRef<List<BiometricType>>;
String _$biometricTypeTextHash() => r'82556ec084ed189c30bfdf4b757ebac48fee40e3';

/// See also [biometricTypeText].
@ProviderFor(biometricTypeText)
final biometricTypeTextProvider = AutoDisposeFutureProvider<String>.internal(
  biometricTypeText,
  name: r'biometricTypeTextProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$biometricTypeTextHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef BiometricTypeTextRef = AutoDisposeFutureProviderRef<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
