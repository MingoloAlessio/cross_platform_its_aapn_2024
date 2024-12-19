// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snippet_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SnippetApiModelImpl _$$SnippetApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SnippetApiModelImpl(
      count: (json['count'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map(
              (e) => PokemonSnippetApiModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SnippetApiModelImplToJson(
        _$SnippetApiModelImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
    };
