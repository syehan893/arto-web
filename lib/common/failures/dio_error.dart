import 'package:dio/dio.dart';

class RefreshTokenExpiredError extends DioError {
  RefreshTokenExpiredError({
    required super.requestOptions,
    super.error,
    super.response,
    super.type,
  });
}
