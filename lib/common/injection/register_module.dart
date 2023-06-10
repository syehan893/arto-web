
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:ta_smt4/common/constants/endpoints.dart';
import 'package:ta_smt4/common/network/dio_interceptors.dart';
import 'package:ta_smt4/common/network/dio_options.dart';
import 'package:ta_smt4/models/token.dart';
import 'package:ta_smt4/view/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
      iOptions: IOSOptions(
        accessibility: KeychainAccessibility.first_unlock,
      ));

  @lazySingleton
  BaseOptions get artoDioOptions => ArtoDioOptions().baseOptions;

  @lazySingleton
  Dio get dio => Dio(artoDioOptions);

  @lazySingleton
  HTTPClient get apiCaller => HTTPClient(
        dio,
        _refreshToken,
        secureStorage,
        isLogEnable: Config.isLogEnable,
      );

  Future<Response> _refreshToken(Token token) async {
    return Dio(ArtoDioOptions().baseOptions)
        .post(Endpoints.auth.login, data: {
      'token': token.refreshToken,
    });
  }

  // @lazySingleton
  // FirebaseFirestore get firestore => FirebaseFirestore.instance;

  // @lazySingleton
  // FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
}
