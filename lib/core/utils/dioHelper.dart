import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static void init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://fakestoreapi.com/products/category/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
     String? url,
     Map<String, dynamic>? query,
  }) async {
    return await dio!.get(
      url!,
      queryParameters: query,
    );
  }
}
