import 'dart:convert';

import 'package:spotify_flutter_modular/app/modules/user/shared/models/user.dart';

class LoginReturn {

  User user;
  String token;
  LoginReturn({
    required this.user,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return {
      'user': user.toMap(),
      'token': token,
    };
  }

  factory LoginReturn.fromMap(Map<String, dynamic> map) {
    return LoginReturn(
      user: User.fromMap(map['user']),
      token: map['token'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginReturn.fromJson(String source) => LoginReturn.fromMap(json.decode(source));
}
