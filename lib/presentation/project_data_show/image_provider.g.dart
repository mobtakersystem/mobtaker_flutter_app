// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getImageLinkHash() => r'0877f529c9a385ffac42e5c2e587cd3ba0b23f6a';

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

abstract class _$GetImageLink
    extends BuildlessAutoDisposeAsyncNotifier<ResultData<String>> {
  late final String fileName;

  FutureOr<ResultData<String>> build(
    String fileName,
  );
}

/// See also [GetImageLink].
@ProviderFor(GetImageLink)
const getImageLinkProvider = GetImageLinkFamily();

/// See also [GetImageLink].
class GetImageLinkFamily extends Family<AsyncValue<ResultData<String>>> {
  /// See also [GetImageLink].
  const GetImageLinkFamily();

  /// See also [GetImageLink].
  GetImageLinkProvider call(
    String fileName,
  ) {
    return GetImageLinkProvider(
      fileName,
    );
  }

  @override
  GetImageLinkProvider getProviderOverride(
    covariant GetImageLinkProvider provider,
  ) {
    return call(
      provider.fileName,
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
  String? get name => r'getImageLinkProvider';
}

/// See also [GetImageLink].
class GetImageLinkProvider extends AutoDisposeAsyncNotifierProviderImpl<
    GetImageLink, ResultData<String>> {
  /// See also [GetImageLink].
  GetImageLinkProvider(
    String fileName,
  ) : this._internal(
          () => GetImageLink()..fileName = fileName,
          from: getImageLinkProvider,
          name: r'getImageLinkProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getImageLinkHash,
          dependencies: GetImageLinkFamily._dependencies,
          allTransitiveDependencies:
              GetImageLinkFamily._allTransitiveDependencies,
          fileName: fileName,
        );

  GetImageLinkProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.fileName,
  }) : super.internal();

  final String fileName;

  @override
  FutureOr<ResultData<String>> runNotifierBuild(
    covariant GetImageLink notifier,
  ) {
    return notifier.build(
      fileName,
    );
  }

  @override
  Override overrideWith(GetImageLink Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetImageLinkProvider._internal(
        () => create()..fileName = fileName,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        fileName: fileName,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GetImageLink, ResultData<String>>
      createElement() {
    return _GetImageLinkProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetImageLinkProvider && other.fileName == fileName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, fileName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetImageLinkRef
    on AutoDisposeAsyncNotifierProviderRef<ResultData<String>> {
  /// The parameter `fileName` of this provider.
  String get fileName;
}

class _GetImageLinkProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GetImageLink,
        ResultData<String>> with GetImageLinkRef {
  _GetImageLinkProviderElement(super.provider);

  @override
  String get fileName => (origin as GetImageLinkProvider).fileName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
