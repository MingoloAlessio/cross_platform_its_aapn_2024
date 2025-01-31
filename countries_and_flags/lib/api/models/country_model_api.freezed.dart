// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_model_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountryModelApi _$CountryModelApiFromJson(Map<String, dynamic> json) {
  return _CountryModelApi.fromJson(json);
}

/// @nodoc
mixin _$CountryModelApi {
  FlagModelApi get flags => throw _privateConstructorUsedError;
  NameModelApi get name => throw _privateConstructorUsedError;
  String get cca2 => throw _privateConstructorUsedError;

  /// Serializes this CountryModelApi to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountryModelApi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryModelApiCopyWith<CountryModelApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryModelApiCopyWith<$Res> {
  factory $CountryModelApiCopyWith(
          CountryModelApi value, $Res Function(CountryModelApi) then) =
      _$CountryModelApiCopyWithImpl<$Res, CountryModelApi>;
  @useResult
  $Res call({FlagModelApi flags, NameModelApi name, String cca2});

  $FlagModelApiCopyWith<$Res> get flags;
  $NameModelApiCopyWith<$Res> get name;
}

/// @nodoc
class _$CountryModelApiCopyWithImpl<$Res, $Val extends CountryModelApi>
    implements $CountryModelApiCopyWith<$Res> {
  _$CountryModelApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryModelApi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flags = null,
    Object? name = null,
    Object? cca2 = null,
  }) {
    return _then(_value.copyWith(
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as FlagModelApi,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameModelApi,
      cca2: null == cca2
          ? _value.cca2
          : cca2 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of CountryModelApi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlagModelApiCopyWith<$Res> get flags {
    return $FlagModelApiCopyWith<$Res>(_value.flags, (value) {
      return _then(_value.copyWith(flags: value) as $Val);
    });
  }

  /// Create a copy of CountryModelApi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NameModelApiCopyWith<$Res> get name {
    return $NameModelApiCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CountryModelApiImplCopyWith<$Res>
    implements $CountryModelApiCopyWith<$Res> {
  factory _$$CountryModelApiImplCopyWith(_$CountryModelApiImpl value,
          $Res Function(_$CountryModelApiImpl) then) =
      __$$CountryModelApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlagModelApi flags, NameModelApi name, String cca2});

  @override
  $FlagModelApiCopyWith<$Res> get flags;
  @override
  $NameModelApiCopyWith<$Res> get name;
}

/// @nodoc
class __$$CountryModelApiImplCopyWithImpl<$Res>
    extends _$CountryModelApiCopyWithImpl<$Res, _$CountryModelApiImpl>
    implements _$$CountryModelApiImplCopyWith<$Res> {
  __$$CountryModelApiImplCopyWithImpl(
      _$CountryModelApiImpl _value, $Res Function(_$CountryModelApiImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryModelApi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flags = null,
    Object? name = null,
    Object? cca2 = null,
  }) {
    return _then(_$CountryModelApiImpl(
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as FlagModelApi,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameModelApi,
      cca2: null == cca2
          ? _value.cca2
          : cca2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryModelApiImpl
    with DiagnosticableTreeMixin
    implements _CountryModelApi {
  const _$CountryModelApiImpl(
      {required this.flags, required this.name, required this.cca2});

  factory _$CountryModelApiImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryModelApiImplFromJson(json);

  @override
  final FlagModelApi flags;
  @override
  final NameModelApi name;
  @override
  final String cca2;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CountryModelApi(flags: $flags, name: $name, cca2: $cca2)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CountryModelApi'))
      ..add(DiagnosticsProperty('flags', flags))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('cca2', cca2));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryModelApiImpl &&
            (identical(other.flags, flags) || other.flags == flags) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cca2, cca2) || other.cca2 == cca2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, flags, name, cca2);

  /// Create a copy of CountryModelApi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryModelApiImplCopyWith<_$CountryModelApiImpl> get copyWith =>
      __$$CountryModelApiImplCopyWithImpl<_$CountryModelApiImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryModelApiImplToJson(
      this,
    );
  }
}

abstract class _CountryModelApi implements CountryModelApi {
  const factory _CountryModelApi(
      {required final FlagModelApi flags,
      required final NameModelApi name,
      required final String cca2}) = _$CountryModelApiImpl;

  factory _CountryModelApi.fromJson(Map<String, dynamic> json) =
      _$CountryModelApiImpl.fromJson;

  @override
  FlagModelApi get flags;
  @override
  NameModelApi get name;
  @override
  String get cca2;

  /// Create a copy of CountryModelApi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryModelApiImplCopyWith<_$CountryModelApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
