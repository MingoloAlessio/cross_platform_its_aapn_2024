import 'package:countries_and_flags/api/models/flag_model_api.dart';
import 'package:countries_and_flags/api/models/name_model_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'country_model_api.freezed.dart';
part 'country_model_api.g.dart';

@freezed
class CountryModelApi with _$CountryModelApi{
  const factory CountryModelApi({
    required FlagModelApi flags,
    required NameModelApi name,
    required String cca2,
  }) = _CountryModelApi;
factory CountryModelApi.fromJson(Map<String, dynamic> json)
=> _$CountryModelApiFromJson(json);
}