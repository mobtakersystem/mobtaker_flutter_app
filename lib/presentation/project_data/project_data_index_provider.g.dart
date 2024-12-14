// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_data_index_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectDataHash() => r'8183278b97402dd1f6cf2f115a0a9af3fde74a7c';

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

/// See also [projectData].
@ProviderFor(projectData)
const projectDataProvider = ProjectDataFamily();

/// See also [projectData].
class ProjectDataFamily extends Family<
    AsyncValue<ResultData<PaginationEntity<ProjectDataEntity>>>> {
  /// See also [projectData].
  const ProjectDataFamily();

  /// See also [projectData].
  ProjectDataProvider call(
    String projectId,
  ) {
    return ProjectDataProvider(
      projectId,
    );
  }

  @override
  ProjectDataProvider getProviderOverride(
    covariant ProjectDataProvider provider,
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
  String? get name => r'projectDataProvider';
}

/// See also [projectData].
class ProjectDataProvider extends AutoDisposeStreamProvider<
    ResultData<PaginationEntity<ProjectDataEntity>>> {
  /// See also [projectData].
  ProjectDataProvider(
    String projectId,
  ) : this._internal(
          (ref) => projectData(
            ref as ProjectDataRef,
            projectId,
          ),
          from: projectDataProvider,
          name: r'projectDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$projectDataHash,
          dependencies: ProjectDataFamily._dependencies,
          allTransitiveDependencies:
              ProjectDataFamily._allTransitiveDependencies,
          projectId: projectId,
        );

  ProjectDataProvider._internal(
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
    Stream<ResultData<PaginationEntity<ProjectDataEntity>>> Function(
            ProjectDataRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProjectDataProvider._internal(
        (ref) => create(ref as ProjectDataRef),
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
  AutoDisposeStreamProviderElement<
      ResultData<PaginationEntity<ProjectDataEntity>>> createElement() {
    return _ProjectDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProjectDataProvider && other.projectId == projectId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, projectId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProjectDataRef on AutoDisposeStreamProviderRef<
    ResultData<PaginationEntity<ProjectDataEntity>>> {
  /// The parameter `projectId` of this provider.
  String get projectId;
}

class _ProjectDataProviderElement extends AutoDisposeStreamProviderElement<
    ResultData<PaginationEntity<ProjectDataEntity>>> with ProjectDataRef {
  _ProjectDataProviderElement(super.provider);

  @override
  String get projectId => (origin as ProjectDataProvider).projectId;
}

String _$projectDataLastUpdateHash() =>
    r'4a12174a2487ab2259f099f0fff399b227b36103';

/// See also [projectDataLastUpdate].
@ProviderFor(projectDataLastUpdate)
final projectDataLastUpdateProvider =
    AutoDisposeStreamProvider<DateTime?>.internal(
  projectDataLastUpdate,
  name: r'projectDataLastUpdateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$projectDataLastUpdateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProjectDataLastUpdateRef = AutoDisposeStreamProviderRef<DateTime?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
