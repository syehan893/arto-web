import 'dart:convert';

import 'package:equatable/equatable.dart';

class LoginRequest extends Equatable {
  final String email;
  final String phone;
  final String password;
  const LoginRequest({
    required this.email,
    required this.phone,
    required this.password,
  });

  LoginRequest copyWith({
    String? email,
    String? phone,
    String? password,
  }) {
    return LoginRequest(
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'phone': phone,
      'password': password,
    };
  }

  factory LoginRequest.fromMap(Map<String, dynamic> map) {
    return LoginRequest(
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      password: map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginRequest.fromJson(String source) =>
      LoginRequest.fromMap(json.decode(source));

  @override
  String toString() =>
      'LoginRequest(email: $email, phone: $phone, password: $password)';

  @override
  List<Object> get props => [email, phone, password];
}
