import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'flag_model_api.freezed.dart';
part 'flag_model_api.g.dart';

@freezed
class FlagModelApi with _$FlagModelApi{
  const factory FlagModelApi({
    required String png,
    required String alt,
  }) = _FlagModelApi;
factory FlagModelApi.fromJson(Map<String, dynamic> json)
=> _$FlagModelApiFromJson(json);
}