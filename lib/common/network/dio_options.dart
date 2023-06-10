import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ta_smt4/view/config.dart';

abstract class DioOptions {
  Options tokenHeaders({required String token}) {
    return Options(headers: {
      HttpHeaders.authorizationHeader: token,
    });
  }

  BaseOptions get baseOptions;
}

class ArtoDioOptions extends DioOptions {
  @override
  BaseOptions get baseOptions => BaseOptions(
        baseUrl: Config.baseUrl,
        connectTimeout: Config.connectTimeout,
        receiveTimeout: Config.receiveTimeout,
      );
}
