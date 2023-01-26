import 'category_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_result_model.g.dart';

@JsonSerializable()
class ApiResultModel {
  List<CategoryModel> categories;
  bool result;

  ApiResultModel(this.categories, this.result);

  factory ApiResultModel.fromJson(Map<String, dynamic> json) => _$ApiResultModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApiResultModelToJson(this);
}
