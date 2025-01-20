// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snippet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SnippetModelImpl _$$SnippetModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SnippetModelImpl',
      json,
      ($checkedConvert) {
        final val = _$SnippetModelImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SnippetModelImplToJson(_$SnippetModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
