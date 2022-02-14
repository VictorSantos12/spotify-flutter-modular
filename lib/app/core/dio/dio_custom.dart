import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'auth_interceptor.dart';

class CustomDio {
  static CustomDio? _simpleInstance;
  static CustomDio? _authInstance;

  late Dio _dio;

  BaseOptions options = BaseOptions(
    baseUrl: dotenv.env['base_url'].toString(),
    connectTimeout: int.parse(dotenv.env['dio_connectTimeout'].toString()),
    receiveTimeout: int.parse(dotenv.env['dio_receiveTimeout'].toString()),
  );

  CustomDio._() {
    _dio = Dio(options);
  }

  CustomDio._auth() {
    _dio = Dio(options);
    _dio.interceptors.add(AuthInterceptor());
  }

  static Dio get instance {
    _simpleInstance ??= CustomDio._();
    return _simpleInstance!._dio;
  }

  static Dio get authInstance {
    _authInstance ??= CustomDio._auth();
    return _authInstance!._dio;
  }
}
