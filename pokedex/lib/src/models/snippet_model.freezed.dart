// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snippet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SnippetModel _$SnippetModelFromJson(Map<String, dynamic> json) {
  return _SnippetModel.fromJson(json);
}

/// @nodoc
mixin _$SnippetModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this SnippetModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnippetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnippetModelCopyWith<SnippetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnippetModelCopyWith<$Res> {
  factory $SnippetModelCopyWith(
          SnippetModel value, $Res Function(SnippetModel) then) =
      _$SnippetModelCopyWithImpl<$Res, SnippetModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$SnippetModelCopyWithImpl<$Res, $Val extends SnippetModel>
    implements $SnippetModelCopyWith<$Res> {
  _$SnippetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnippetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnippetModelImplCopyWith<$Res>
    implements $SnippetModelCopyWith<$Res> {
  factory _$$SnippetModelImplCopyWith(
          _$SnippetModelImpl value, $Res Function(_$SnippetModelImpl) then) =
      __$$SnippetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$SnippetModelImplCopyWithImpl<$Res>
    extends _$SnippetModelCopyWithImpl<$Res, _$SnippetModelImpl>
    implements _$$SnippetModelImplCopyWith<$Res> {
  __$$SnippetModelImplCopyWithImpl(
      _$SnippetModelImpl _value, $Res Function(_$SnippetModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnippetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$SnippetModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnippetModelImpl with DiagnosticableTreeMixin implements _SnippetModel {
  const _$SnippetModelImpl({required this.id, required this.name});

  factory _$SnippetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnippetModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SnippetModel(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SnippetModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnippetModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of SnippetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnippetModelImplCopyWith<_$SnippetModelImpl> get copyWith =>
      __$$SnippetModelImplCopyWithImpl<_$SnippetModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnippetModelImplToJson(
      this,
    );
  }
}

abstract class _SnippetModel implements SnippetModel {
  const factory _SnippetModel(
      {required final int id, required final String name}) = _$SnippetModelImpl;

  factory _SnippetModel.fromJson(Map<String, dynamic> json) =
      _$SnippetModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of SnippetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnippetModelImplCopyWith<_$SnippetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
