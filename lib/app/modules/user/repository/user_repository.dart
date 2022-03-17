

import 'dart:convert';

import 'package:spotify_flutter_modular/app/core/dio/dio_custom.dart';
import 'package:spotify_flutter_modular/app/modules/user/shared/models/home_return.dart';
import 'package:spotify_flutter_modular/app/modules/user/shared/models/login.dart';
import 'package:spotify_flutter_modular/app/modules/user/shared/models/login_return.dart';

class UserRepository {

   Future<LoginReturn> login(Login login) {
     return CustomDio.authInstance
     .post('/login', data: login.toMap())
     .then((res) {
       return LoginReturn.fromJson(json.encode(res.data));
     });
   }

  Future<HomeReturn> home() {
    return CustomDio.authInstance
    .get('/')
    .then((res) {
      return HomeReturn.fromJson(json.encode(res.data));
    });
  }
}