import 'package:dio/dio.dart';
import 'package:fleksa_assignment/models/api_result_model.dart';
import 'package:retrofit/http.dart';

import '../utils/api_constats.dart';
part 'menu_api_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class MenuApiClient {
  factory MenuApiClient(Dio dio, {String baseUrl}) = _MenuApiClient;

  //#region Video Service
  @GET("menu")
  Future<ApiResultModel> fetchMenu();


}
