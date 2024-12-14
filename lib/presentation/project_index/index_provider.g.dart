// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectIndexHash() => r'e7243ade6c45d3e91e6ac81ab5214fa7162ece9d';

/// See also [projectIndex].
@ProviderFor(projectIndex)
final projectIndexProvider = AutoDisposeStreamProvider<
    ResultData<PaginationEntity<ProjectEntity>>>.internal(
  projectIndex,
  name: r'projectIndexProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$projectIndexHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProjectIndexRef
    = AutoDisposeStreamProviderRef<ResultData<PaginationEntity<ProjectEntity>>>;
String _$projectIndexLastUpdateHash() =>
    r'514481d8de5f5d62121d502fe501b02ea5903918';

/// See also [projectIndexLastUpdate].
@ProviderFor(projectIndexLastUpdate)
final projectIndexLastUpdateProvider =
    AutoDisposeStreamProvider<DateTime?>.internal(
  projectIndexLastUpdate,
  name: r'projectIndexLastUpdateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$projectIndexLastUpdateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProjectIndexLastUpdateRef = AutoDisposeStreamProviderRef<DateTime?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
