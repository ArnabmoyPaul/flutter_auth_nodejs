import 'dart:convert';

class User {
  final int id; // Keep as int
  final String name;
  final String email;
  final String token;
  final String password;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.token,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'token': token,
      'password': password,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      // Handle both String and int coming from JSON
      id: int.tryParse(map['id']?.toString() ?? '') ?? 0,
      name: map['name']?.toString() ?? '',
      email: map['email']?.toString() ?? '',
      token: map['token']?.toString() ?? '',
      password: map['password']?.toString() ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
