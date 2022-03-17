import 'dart:convert';

class HomeReturn {

  bool ok;
  String id;
  HomeReturn({
    required this.ok,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'ok': ok,
      'id': id,
    };
  }

  factory HomeReturn.fromMap(Map<String, dynamic> map) {
    return HomeReturn(
      ok: map['ok'] ?? false,
      id: map['id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory HomeReturn.fromJson(String source) => HomeReturn.fromMap(json.decode(source));
}
