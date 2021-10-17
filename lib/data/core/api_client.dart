import 'package:dio/dio.dart';

import 'api_constants.dart';

class ApiClient {
  final Dio dio;

  ApiClient({required this.dio});

  get(String path, {Map<dynamic, dynamic>? params}) async {
    final response = await dio.get('${ApiConstants.baseUrl}$path');
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(response);
    }
  }
}
