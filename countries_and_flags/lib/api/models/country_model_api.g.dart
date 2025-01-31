// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryModelApiImpl _$$CountryModelApiImplFromJson(
        Map<String, dynamic> json) =>
    _$CountryModelApiImpl(
      flags: FlagModelApi.fromJson(json['flags'] as Map<String, dynamic>),
      name: NameModelApi.fromJson(json['name'] as Map<String, dynamic>),
      cca2: json['cca2'] as String,
    );

Map<String, dynamic> _$$CountryModelApiImplToJson(
        _$CountryModelApiImpl instance) =>
    <String, dynamic>{
      'flags': instance.flags,
      'name': instance.name,
      'cca2': instance.cca2,
    };
