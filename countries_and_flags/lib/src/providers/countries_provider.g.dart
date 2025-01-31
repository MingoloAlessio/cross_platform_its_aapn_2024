// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchAllCountriesHash() => r'69317228998052201bbd746094eb9ff0ee8113da';

/// See also [fetchAllCountries].
@ProviderFor(fetchAllCountries)
final fetchAllCountriesProvider =
    AutoDisposeFutureProvider<List<CountryModel>>.internal(
  fetchAllCountries,
  name: r'fetchAllCountriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchAllCountriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FetchAllCountriesRef = AutoDisposeFutureProviderRef<List<CountryModel>>;
String _$searchCountriesHash() => r'cb3746bafcc7cfdaf3e81336b3414210666c76b7';

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

/// See also [searchCountries].
@ProviderFor(searchCountries)
const searchCountriesProvider = SearchCountriesFamily();

/// See also [searchCountries].
class SearchCountriesFamily extends Family<AsyncValue<List<CountryModel>>> {
  /// See also [searchCountries].
  const SearchCountriesFamily();

  /// See also [searchCountries].
  SearchCountriesProvider call(
    String query,
  ) {
    return SearchCountriesProvider(
      query,
    );
  }

  @override
  SearchCountriesProvider getProviderOverride(
    covariant SearchCountriesProvider provider,
  ) {
    return call(
      provider.query,
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
  String? get name => r'searchCountriesProvider';
}

/// See also [searchCountries].
class SearchCountriesProvider
    extends AutoDisposeFutureProvider<List<CountryModel>> {
  /// See also [searchCountries].
  SearchCountriesProvider(
    String query,
  ) : this._internal(
          (ref) => searchCountries(
            ref as SearchCountriesRef,
            query,
          ),
          from: searchCountriesProvider,
          name: r'searchCountriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchCountriesHash,
          dependencies: SearchCountriesFamily._dependencies,
          allTransitiveDependencies:
              SearchCountriesFamily._allTransitiveDependencies,
          query: query,
        );

  SearchCountriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String query;

  @override
  Override overrideWith(
    FutureOr<List<CountryModel>> Function(SearchCountriesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchCountriesProvider._internal(
        (ref) => create(ref as SearchCountriesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<CountryModel>> createElement() {
    return _SearchCountriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchCountriesProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SearchCountriesRef on AutoDisposeFutureProviderRef<List<CountryModel>> {
  /// The parameter `query` of this provider.
  String get query;
}

class _SearchCountriesProviderElement
    extends AutoDisposeFutureProviderElement<List<CountryModel>>
    with SearchCountriesRef {
  _SearchCountriesProviderElement(super.provider);

  @override
  String get query => (origin as SearchCountriesProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
