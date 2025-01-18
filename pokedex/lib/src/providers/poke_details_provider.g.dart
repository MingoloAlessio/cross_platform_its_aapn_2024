// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokeDetailsHash() => r'3ed4622abf73cd1eb31800f4a822194d786f6118';

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

/// See also [pokeDetails].
@ProviderFor(pokeDetails)
const pokeDetailsProvider = PokeDetailsFamily();

/// See also [pokeDetails].
class PokeDetailsFamily extends Family<AsyncValue<PokemonDetailsModel>> {
  /// See also [pokeDetails].
  const PokeDetailsFamily();

  /// See also [pokeDetails].
  PokeDetailsProvider call(
    int i,
  ) {
    return PokeDetailsProvider(
      i,
    );
  }

  @override
  PokeDetailsProvider getProviderOverride(
    covariant PokeDetailsProvider provider,
  ) {
    return call(
      provider.i,
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
  String? get name => r'pokeDetailsProvider';
}

/// See also [pokeDetails].
class PokeDetailsProvider
    extends AutoDisposeFutureProvider<PokemonDetailsModel> {
  /// See also [pokeDetails].
  PokeDetailsProvider(
    int i,
  ) : this._internal(
          (ref) => pokeDetails(
            ref as PokeDetailsRef,
            i,
          ),
          from: pokeDetailsProvider,
          name: r'pokeDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokeDetailsHash,
          dependencies: PokeDetailsFamily._dependencies,
          allTransitiveDependencies:
              PokeDetailsFamily._allTransitiveDependencies,
          i: i,
        );

  PokeDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.i,
  }) : super.internal();

  final int i;

  @override
  Override overrideWith(
    FutureOr<PokemonDetailsModel> Function(PokeDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PokeDetailsProvider._internal(
        (ref) => create(ref as PokeDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        i: i,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PokemonDetailsModel> createElement() {
    return _PokeDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PokeDetailsProvider && other.i == i;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, i.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PokeDetailsRef on AutoDisposeFutureProviderRef<PokemonDetailsModel> {
  /// The parameter `i` of this provider.
  int get i;
}

class _PokeDetailsProviderElement
    extends AutoDisposeFutureProviderElement<PokemonDetailsModel>
    with PokeDetailsRef {
  _PokeDetailsProviderElement(super.provider);

  @override
  int get i => (origin as PokeDetailsProvider).i;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
