// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_data_item_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectItemSyncStatusHash() =>
    r'69ba2dd31d5278872cf4a3cd60dd4ca9558c95b1';

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

/// See also [projectItemSyncStatus].
@ProviderFor(projectItemSyncStatus)
const projectItemSyncStatusProvider = ProjectItemSyncStatusFamily();

/// See also [projectItemSyncStatus].
class ProjectItemSyncStatusFamily extends Family<AsyncValue<DataSyncStatus?>> {
  /// See also [projectItemSyncStatus].
  const ProjectItemSyncStatusFamily();

  /// See also [projectItemSyncStatus].
  ProjectItemSyncStatusProvider call(
    String projectId,
  ) {
    return ProjectItemSyncStatusProvider(
      projectId,
    );
  }

  @override
  ProjectItemSyncStatusProvider getProviderOverride(
    covariant ProjectItemSyncStatusProvider provider,
  ) {
    return call(
      provider.projectId,
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
  String? get name => r'projectItemSyncStatusProvider';
}

/// See also [projectItemSyncStatus].
class ProjectItemSyncStatusProvider
    extends AutoDisposeStreamProvider<DataSyncStatus?> {
  /// See also [projectItemSyncStatus].
  ProjectItemSyncStatusProvider(
    String projectId,
  ) : this._internal(
          (ref) => projectItemSyncStatus(
            ref as ProjectItemSyncStatusRef,
            projectId,
          ),
          from: projectItemSyncStatusProvider,
          name: r'projectItemSyncStatusProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$projectItemSyncStatusHash,
          dependencies: ProjectItemSyncStatusFamily._dependencies,
          allTransitiveDependencies:
              ProjectItemSyncStatusFamily._allTransitiveDependencies,
          projectId: projectId,
        );

  ProjectItemSyncStatusProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.projectId,
  }) : super.internal();

  final String projectId;

  @override
  Override overrideWith(
    Stream<DataSyncStatus?> Function(ProjectItemSyncStatusRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProjectItemSyncStatusProvider._internal(
        (ref) => create(ref as ProjectItemSyncStatusRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        projectId: projectId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<DataSyncStatus?> createElement() {
    return _ProjectItemSyncStatusProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProjectItemSyncStatusProvider &&
        other.projectId == projectId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, projectId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProjectItemSyncStatusRef
    on AutoDisposeStreamProviderRef<DataSyncStatus?> {
  /// The parameter `projectId` of this provider.
  String get projectId;
}

class _ProjectItemSyncStatusProviderElement
    extends AutoDisposeStreamProviderElement<DataSyncStatus?>
    with ProjectItemSyncStatusRef {
  _ProjectItemSyncStatusProviderElement(super.provider);

  @override
  String get projectId => (origin as ProjectItemSyncStatusProvider).projectId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
