// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_sprite_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonSpriteApiModel _$PokemonSpriteApiModelFromJson(
    Map<String, dynamic> json) {
  return _PokemonSpriteApiModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpriteApiModel {
  String get frontDefault => throw _privateConstructorUsedError;

  /// Serializes this PokemonSpriteApiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonSpriteApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonSpriteApiModelCopyWith<PokemonSpriteApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpriteApiModelCopyWith<$Res> {
  factory $PokemonSpriteApiModelCopyWith(PokemonSpriteApiModel value,
          $Res Function(PokemonSpriteApiModel) then) =
      _$PokemonSpriteApiModelCopyWithImpl<$Res, PokemonSpriteApiModel>;
  @useResult
  $Res call({String frontDefault});
}

/// @nodoc
class _$PokemonSpriteApiModelCopyWithImpl<$Res,
        $Val extends PokemonSpriteApiModel>
    implements $PokemonSpriteApiModelCopyWith<$Res> {
  _$PokemonSpriteApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonSpriteApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
  }) {
    return _then(_value.copyWith(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSpriteApiModelImplCopyWith<$Res>
    implements $PokemonSpriteApiModelCopyWith<$Res> {
  factory _$$PokemonSpriteApiModelImplCopyWith(
          _$PokemonSpriteApiModelImpl value,
          $Res Function(_$PokemonSpriteApiModelImpl) then) =
      __$$PokemonSpriteApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String frontDefault});
}

/// @nodoc
class __$$PokemonSpriteApiModelImplCopyWithImpl<$Res>
    extends _$PokemonSpriteApiModelCopyWithImpl<$Res,
        _$PokemonSpriteApiModelImpl>
    implements _$$PokemonSpriteApiModelImplCopyWith<$Res> {
  __$$PokemonSpriteApiModelImplCopyWithImpl(_$PokemonSpriteApiModelImpl _value,
      $Res Function(_$PokemonSpriteApiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonSpriteApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
  }) {
    return _then(_$PokemonSpriteApiModelImpl(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpriteApiModelImpl
    with DiagnosticableTreeMixin
    implements _PokemonSpriteApiModel {
  const _$PokemonSpriteApiModelImpl({required this.frontDefault});

  factory _$PokemonSpriteApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpriteApiModelImplFromJson(json);

  @override
  final String frontDefault;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonSpriteApiModel(frontDefault: $frontDefault)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonSpriteApiModel'))
      ..add(DiagnosticsProperty('frontDefault', frontDefault));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpriteApiModelImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault);

  /// Create a copy of PokemonSpriteApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpriteApiModelImplCopyWith<_$PokemonSpriteApiModelImpl>
      get copyWith => __$$PokemonSpriteApiModelImplCopyWithImpl<
          _$PokemonSpriteApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpriteApiModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpriteApiModel implements PokemonSpriteApiModel {
  const factory _PokemonSpriteApiModel({required final String frontDefault}) =
      _$PokemonSpriteApiModelImpl;

  factory _PokemonSpriteApiModel.fromJson(Map<String, dynamic> json) =
      _$PokemonSpriteApiModelImpl.fromJson;

  @override
  String get frontDefault;

  /// Create a copy of PokemonSpriteApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonSpriteApiModelImplCopyWith<_$PokemonSpriteApiModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
