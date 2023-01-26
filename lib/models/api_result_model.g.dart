// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResultModel _$ApiResultModelFromJson(Map<String, dynamic> json) =>
    ApiResultModel(
      (json['categories'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['result'] as bool,
    );

Map<String, dynamic> _$ApiResultModelToJson(ApiResultModel instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'result': instance.result,
    };
