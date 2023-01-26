// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      availability: json['availability'] == null
          ? null
          : AvailabilityBean.fromJson(
              json['availability'] as Map<String, dynamic>),
      description_json: json['description_json'] == null
          ? null
          : Description_jsonBean.fromJson(
              json['description_json'] as Map<String, dynamic>),
      id: json['id'] as num?,
      image: json['image'],
      in_stock: json['in_stock'] as bool?,
      name_json: json['name_json'] == null
          ? null
          : Name_jsonBean.fromJson(json['name_json'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductsBean.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'availability': instance.availability,
      'description_json': instance.description_json,
      'id': instance.id,
      'image': instance.image,
      'in_stock': instance.in_stock,
      'name_json': instance.name_json,
      'products': instance.products,
    };

ProductsBean _$ProductsBeanFromJson(Map<String, dynamic> json) => ProductsBean(
      additional_info: json['additional_info'] == null
          ? null
          : Additional_infoBean.fromJson(
              json['additional_info'] as Map<String, dynamic>),
      choice: json['choice'],
      description_json: json['description_json'] == null
          ? null
          : Description_jsonBean.fromJson(
              json['description_json'] as Map<String, dynamic>),
      id: json['id'] as num?,
      image: json['image'],
      in_stock: json['in_stock'] as bool?,
      is_popular: json['is_popular'] as bool?,
      name_json: json['name_json'] == null
          ? null
          : Name_jsonBean.fromJson(json['name_json'] as Map<String, dynamic>),
      price: json['price'] as num?,
      side_products_json: json['side_products_json'],
      sku: json['sku'] as String?,
      type_: json['type_'] as String?,
    );

Map<String, dynamic> _$ProductsBeanToJson(ProductsBean instance) =>
    <String, dynamic>{
      'additional_info': instance.additional_info,
      'choice': instance.choice,
      'description_json': instance.description_json,
      'id': instance.id,
      'image': instance.image,
      'in_stock': instance.in_stock,
      'is_popular': instance.is_popular,
      'name_json': instance.name_json,
      'price': instance.price,
      'side_products_json': instance.side_products_json,
      'sku': instance.sku,
      'type_': instance.type_,
    };

Additional_infoBean _$Additional_infoBeanFromJson(Map<String, dynamic> json) =>
    Additional_infoBean(
      has_data: json['has_data'] as bool?,
    );

Map<String, dynamic> _$Additional_infoBeanToJson(
        Additional_infoBean instance) =>
    <String, dynamic>{
      'has_data': instance.has_data,
    };

Name_jsonBean _$Name_jsonBeanFromJson(Map<String, dynamic> json) =>
    Name_jsonBean(
      english: json['english'] as String?,
      german: json['german'] as String?,
    );

Map<String, dynamic> _$Name_jsonBeanToJson(Name_jsonBean instance) =>
    <String, dynamic>{
      'english': instance.english,
      'german': instance.german,
    };

Description_jsonBean _$Description_jsonBeanFromJson(
        Map<String, dynamic> json) =>
    Description_jsonBean(
      english: json['english'] as String?,
      german: json['german'] as String?,
    );

Map<String, dynamic> _$Description_jsonBeanToJson(
        Description_jsonBean instance) =>
    <String, dynamic>{
      'english': instance.english,
      'german': instance.german,
    };

AvailabilityBean _$AvailabilityBeanFromJson(Map<String, dynamic> json) =>
    AvailabilityBean(
      always: json['always'] as bool?,
    );

Map<String, dynamic> _$AvailabilityBeanToJson(AvailabilityBean instance) =>
    <String, dynamic>{
      'always': instance.always,
    };
