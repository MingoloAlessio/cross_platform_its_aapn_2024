// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snippet_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SnippetApiModelImpl _$$SnippetApiModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SnippetApiModelImpl',
      json,
      ($checkedConvert) {
        final val = _$SnippetApiModelImpl(
          count: $checkedConvert('count', (v) => (v as num).toInt()),
          results: $checkedConvert(
              'results',
              (v) => (v as List<dynamic>)
                  .map((e) => PokemonSnippetApiModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SnippetApiModelImplToJson(
        _$SnippetApiModelImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results.map((e) => e.toJson()).toList(),
    };
