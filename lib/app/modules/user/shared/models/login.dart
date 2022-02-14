import 'dart:convert';

class Login {

  String email;
  String password;

  Login({
    required this.email,
    required this.password,
  });


  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }

  factory Login.fromMap(Map<String, dynamic> map) {
    return Login(
      email: map['email'] ?? '',
      password: map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Login.fromJson(String source) => Login.fromMap(json.decode(source));
}
