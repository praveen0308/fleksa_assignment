import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  AvailabilityBean? availability;
  Description_jsonBean? description_json;
  num? id;
  dynamic image;
  bool? in_stock;
  Name_jsonBean? name_json;
  List<ProductsBean>? products;
  bool isActive = false;
  CategoryModel({this.availability, this.description_json, this.id, this.image, this.in_stock, this.name_json, this.products});

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}

@JsonSerializable()
class ProductsBean {
  Additional_infoBean? additional_info;
  dynamic choice;
  Description_jsonBean? description_json;
  num? id;
  dynamic image;
  bool? in_stock;
  bool? is_popular;
  Name_jsonBean? name_json;
  num? price;
  dynamic side_products_json;
  String? sku;
  String? type_;

  ProductsBean({this.additional_info, this.choice, this.description_json, this.id, this.image, this.in_stock, this.is_popular, this.name_json, this.price, this.side_products_json, this.sku, this.type_});

  factory ProductsBean.fromJson(Map<String, dynamic> json) => _$ProductsBeanFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsBeanToJson(this);
}

@JsonSerializable()
class Additional_infoBean {
  bool? has_data;

  Additional_infoBean({this.has_data});

  factory Additional_infoBean.fromJson(Map<String, dynamic> json) => _$Additional_infoBeanFromJson(json);

  Map<String, dynamic> toJson() => _$Additional_infoBeanToJson(this);
}

@JsonSerializable()
class Name_jsonBean {
  String? english;
  String? german;

  Name_jsonBean({this.english, this.german});

  factory Name_jsonBean.fromJson(Map<String, dynamic> json) => _$Name_jsonBeanFromJson(json);

  Map<String, dynamic> toJson() => _$Name_jsonBeanToJson(this);
}

@JsonSerializable()
class Description_jsonBean {
  String? english;
  String? german;

  Description_jsonBean({this.english, this.german});

  factory Description_jsonBean.fromJson(Map<String, dynamic> json) => _$Description_jsonBeanFromJson(json);

  Map<String, dynamic> toJson() => _$Description_jsonBeanToJson(this);
}

@JsonSerializable()
class AvailabilityBean {
  bool? always;

  AvailabilityBean({this.always});

  factory AvailabilityBean.fromJson(Map<String, dynamic> json) => _$AvailabilityBeanFromJson(json);

  Map<String, dynamic> toJson() => _$AvailabilityBeanToJson(this);
}

