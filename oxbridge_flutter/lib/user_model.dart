import 'package:flutter/foundation.dart';

class User {
  final String firstname;
  final String lastname;
  final String emailUsername;
  final String password;

  User({
    required this.firstname,
    required this.lastname,
    required this.emailUsername,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> user) {
    return User(
        firstname: user['firstname'] as String,
        lastname: user['lastname'] as String,
        emailUsername: user['emailUsername'] as String,
        password: user['password'] as String,
        );
  }
}
