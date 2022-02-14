import 'dart:convert';

import 'package:spotify_flutter_modular/app/modules/user/shared/models/user.dart';

class Return {

  User user;
  String token;
  Return({
    required this.user,
    required this.token,
  });


  Map<String, dynamic> toMap() {
    return {
      'user': user.toMap(),
      'token': token,
    };
  }

  factory Return.fromMap(Map<String, dynamic> map) {
    return Return(
      user: User.fromMap(map['user']),
      token: map['token'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Return.fromJson(String source) => Return.fromMap(json.decode(source));
}
