import 'package:dio/dio.dart';
import 'package:spotify_flutter_modular/app/core/auth_store/auth_store.dart';

class AuthInterceptor extends Interceptor {
  
  AuthStore authStore = AuthStore();

  @override 
  Future<void> onRequest(
    RequestOptions options, 
    RequestInterceptorHandler handler
  ) async {

   String token = await authStore.getAccessToken();

   if(token != '') {
     options.headers['Authorization'] = 'Bearer ' + token;
   }
   return handler.next(options);
  }

  @override 
  Future<void> onResponse(Response response, ResponseInterceptorHandler handler) async {
    return handler.next(response);
  }

  @override 
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    print('erro: ${err.response}');
    return handler.next(err);
  }
}