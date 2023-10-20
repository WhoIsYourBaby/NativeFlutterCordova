import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Api {
  static final _options = BaseOptions(
    connectTimeout: const Duration(milliseconds: 3 * 1000),
    sendTimeout: const Duration(milliseconds: 60 * 1000),
    receiveTimeout: const Duration(milliseconds: 60 * 1000),
  );
  static final _dio = Dio(_options)
    ..interceptors.add(TokenInterceptor())
    ..interceptors.add(
      LogInterceptor(requestHeader: false, responseHeader: false),
    );

  static Future<dynamic> request({
    required String path,
    String method = "get",
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
    Object? data,
  }) {
    return _dio.request(
      path,
      queryParameters: query,
      data: data,
      options: Options(
        method: method,
        headers: headers,
      ),
    );
  }
}

class TokenInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }
}
