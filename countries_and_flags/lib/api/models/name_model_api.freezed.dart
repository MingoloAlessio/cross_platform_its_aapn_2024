// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name_model_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NameModelApi _$NameModelApiFromJson(Map<String, dynamic> json) {
  return _NameModelApi.fromJson(json);
}

/// @nodoc
mixin _$NameModelApi {
  String get common => throw _privateConstructorUsedError;
  String get official => throw _privateConstructorUsedError;

  /// Serializes this NameModelApi to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NameModelApi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NameModelApiCopyWith<NameModelApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameModelApiCopyWith<$Res> {
  factory $NameModelApiCopyWith(
          NameModelApi value, $Res Function(NameModelApi) then) =
      _$NameModelApiCopyWithImpl<$Res, NameModelApi>;
  @useResult
  $Res call({String common, String official});
}

/// @nodoc
class _$NameModelApiCopyWithImpl<$Res, $Val extends NameModelApi>
    implements $NameModelApiCopyWith<$Res> {
  _$NameModelApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NameModelApi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
    Object? official = null,
  }) {
    return _then(_value.copyWith(
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameModelApiImplCopyWith<$Res>
    implements $NameModelApiCopyWith<$Res> {
  factory _$$NameModelApiImplCopyWith(
          _$NameModelApiImpl value, $Res Function(_$NameModelApiImpl) then) =
      __$$NameModelApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String common, String official});
}

/// @nodoc
class __$$NameModelApiImplCopyWithImpl<$Res>
    extends _$NameModelApiCopyWithImpl<$Res, _$NameModelApiImpl>
    implements _$$NameModelApiImplCopyWith<$Res> {
  __$$NameModelApiImplCopyWithImpl(
      _$NameModelApiImpl _value, $Res Function(_$NameModelApiImpl) _then)
      : super(_value, _then);

  /// Create a copy of NameModelApi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
    Object? official = null,
  }) {
    return _then(_$NameModelApiImpl(
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NameModelApiImpl with DiagnosticableTreeMixin implements _NameModelApi {
  const _$NameModelApiImpl({required this.common, required this.official});

  factory _$NameModelApiImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameModelApiImplFromJson(json);

  @override
  final String common;
  @override
  final String official;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NameModelApi(common: $common, official: $official)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NameModelApi'))
      ..add(DiagnosticsProperty('common', common))
      ..add(DiagnosticsProperty('official', official));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameModelApiImpl &&
            (identical(other.common, common) || other.common == common) &&
            (identical(other.official, official) ||
                other.official == official));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, common, official);

  /// Create a copy of NameModelApi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NameModelApiImplCopyWith<_$NameModelApiImpl> get copyWith =>
      __$$NameModelApiImplCopyWithImpl<_$NameModelApiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameModelApiImplToJson(
      this,
    );
  }
}

abstract class _NameModelApi implements NameModelApi {
  const factory _NameModelApi(
      {required final String common,
      required final String official}) = _$NameModelApiImpl;

  factory _NameModelApi.fromJson(Map<String, dynamic> json) =
      _$NameModelApiImpl.fromJson;

  @override
  String get common;
  @override
  String get official;

  /// Create a copy of NameModelApi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NameModelApiImplCopyWith<_$NameModelApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
