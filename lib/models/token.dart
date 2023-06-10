import 'dart:convert';

import 'package:equatable/equatable.dart';

class Token extends Equatable {
  final String? accessToken;
  final String? refreshToken;
  const Token({
    this.accessToken,
    this.refreshToken,
  });

  Token copyWith({
    String? accessToken,
    String? refreshToken,
  }) {
    return Token(
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'access_token': accessToken,
      'refresh_token': refreshToken,
    };
  }

  factory Token.fromMap(Map<String, dynamic> map) {
    return Token(
      accessToken: map['access_token'],
      refreshToken: map['refresh_token'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Token.fromJson(String source) => Token.fromMap(json.decode(source));

  @override
  String toString() =>
      'Token(accessToken: $accessToken, refreshToken: $refreshToken)';

  @override
  List<Object?> get props => [accessToken, refreshToken];
}
