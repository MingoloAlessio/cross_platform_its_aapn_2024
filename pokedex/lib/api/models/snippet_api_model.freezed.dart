// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snippet_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SnippetApiModel _$SnippetApiModelFromJson(Map<String, dynamic> json) {
  return _SnippetApiModel.fromJson(json);
}

/// @nodoc
mixin _$SnippetApiModel {
  int get count => throw _privateConstructorUsedError;
  List<PokemonSnippetApiModel> get results =>
      throw _privateConstructorUsedError;

  /// Serializes this SnippetApiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnippetApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnippetApiModelCopyWith<SnippetApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnippetApiModelCopyWith<$Res> {
  factory $SnippetApiModelCopyWith(
          SnippetApiModel value, $Res Function(SnippetApiModel) then) =
      _$SnippetApiModelCopyWithImpl<$Res, SnippetApiModel>;
  @useResult
  $Res call({int count, List<PokemonSnippetApiModel> results});
}

/// @nodoc
class _$SnippetApiModelCopyWithImpl<$Res, $Val extends SnippetApiModel>
    implements $SnippetApiModelCopyWith<$Res> {
  _$SnippetApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnippetApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonSnippetApiModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnippetApiModelImplCopyWith<$Res>
    implements $SnippetApiModelCopyWith<$Res> {
  factory _$$SnippetApiModelImplCopyWith(_$SnippetApiModelImpl value,
          $Res Function(_$SnippetApiModelImpl) then) =
      __$$SnippetApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<PokemonSnippetApiModel> results});
}

/// @nodoc
class __$$SnippetApiModelImplCopyWithImpl<$Res>
    extends _$SnippetApiModelCopyWithImpl<$Res, _$SnippetApiModelImpl>
    implements _$$SnippetApiModelImplCopyWith<$Res> {
  __$$SnippetApiModelImplCopyWithImpl(
      _$SnippetApiModelImpl _value, $Res Function(_$SnippetApiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnippetApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? results = null,
  }) {
    return _then(_$SnippetApiModelImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonSnippetApiModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnippetApiModelImpl
    with DiagnosticableTreeMixin
    implements _SnippetApiModel {
  const _$SnippetApiModelImpl(
      {required this.count,
      required final List<PokemonSnippetApiModel> results})
      : _results = results;

  factory _$SnippetApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnippetApiModelImplFromJson(json);

  @override
  final int count;
  final List<PokemonSnippetApiModel> _results;
  @override
  List<PokemonSnippetApiModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SnippetApiModel(count: $count, results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SnippetApiModel'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnippetApiModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_results));

  /// Create a copy of SnippetApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnippetApiModelImplCopyWith<_$SnippetApiModelImpl> get copyWith =>
      __$$SnippetApiModelImplCopyWithImpl<_$SnippetApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnippetApiModelImplToJson(
      this,
    );
  }
}

abstract class _SnippetApiModel implements SnippetApiModel {
  const factory _SnippetApiModel(
          {required final int count,
          required final List<PokemonSnippetApiModel> results}) =
      _$SnippetApiModelImpl;

  factory _SnippetApiModel.fromJson(Map<String, dynamic> json) =
      _$SnippetApiModelImpl.fromJson;

  @override
  int get count;
  @override
  List<PokemonSnippetApiModel> get results;

  /// Create a copy of SnippetApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnippetApiModelImplCopyWith<_$SnippetApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
