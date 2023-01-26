import 'package:dio/dio.dart';
import 'package:fleksa_assignment/models/api_result_model.dart';
import 'package:fleksa_assignment/network/menu_api_client.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class MenuRepository {
  late Dio _dio;
  late MenuApiClient _menuApiClient;

  MenuRepository() {
    _dio = Dio();
    _dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      compact: false,
    ));
    _menuApiClient = MenuApiClient(_dio);
  }

  Future<ApiResultModel> fetchMenu() {
    return _menuApiClient.fetchMenu();
  }
}
