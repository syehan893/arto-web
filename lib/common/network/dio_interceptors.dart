import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:ta_smt4/common/constants/common_storage_constant.dart';
import 'package:ta_smt4/common/failures/dio_error.dart';
import 'package:ta_smt4/common/helpers/logger.dart';
import 'package:ta_smt4/common/helpers/util.dart';

import '../../models/token.dart';

class HTTPClient {
  final Dio dio;
  final Future<Response> Function(Token token) onRefreshToken;
  final FlutterSecureStorage storage;

  HTTPClient(this.dio, this.onRefreshToken, this.storage,
      {bool isLogEnable = false}) {
    dio.interceptors.addAll({
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await _getToken();

          if (token != null) {
            final accessTokenHasExpired =
                JwtDecoder.isExpired(token.accessToken!);
            final refreshTokenHasExpired =
                JwtDecoder.isExpired(token.refreshToken!);
            if (accessTokenHasExpired) {
              if (refreshTokenHasExpired) {
                return handler.reject(
                  RefreshTokenExpiredError(
                    requestOptions: options,
                    error: DioErrorType.other,
                  ),
                  true,
                );
              }
              final d = onRefreshToken(token).then((d) {
                Token? newToken = Token.fromMap(d.data!);
                storage.write(
                    key: CommonStorageKeys.token, value: newToken.toJson());
                options.headers[HttpHeaders.authorizationHeader] =
                    newToken.accessToken;
                logger.d('request token succeed, value: $token');
                logger.d(
                    'continue to perform request：path:${options.path}，baseURL:${options.path}');
                return handler.next(options);
              }).catchError((error, stackTrace) {
                logger.e(error);
                return handler.reject(error, true);
              });
              return d;
            } else {
              options.headers[HttpHeaders.authorizationHeader] =
                  token.accessToken;
              return handler.next(options);
            }
          }
          return handler.next(options);
        },
      ),
      LogInterceptor(
        requestBody: isLogEnable,
        responseBody: isLogEnable,
        request: isLogEnable,
        error: isLogEnable,
        requestHeader: isLogEnable,
        responseHeader: isLogEnable,
      ),
    });
  }

  Future<Token?> _getToken() async {
    final rawToken = await storage.read(key: CommonStorageKeys.token);
    if (!Util.falsyChecker(rawToken)) {
      return Token.fromJson(rawToken!);
    }
    return null;
  }
}
