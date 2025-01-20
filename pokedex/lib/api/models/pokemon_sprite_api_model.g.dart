// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_sprite_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonSpriteApiModelImpl _$$PokemonSpriteApiModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PokemonSpriteApiModelImpl',
      json,
      ($checkedConvert) {
        final val = _$PokemonSpriteApiModelImpl(
          frontDefault: $checkedConvert('front_default', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'frontDefault': 'front_default'},
    );

Map<String, dynamic> _$$PokemonSpriteApiModelImplToJson(
        _$PokemonSpriteApiModelImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };
