import 'package:injectable/injectable.dart';
import 'package:ta_smt4/common/constants/endpoints.dart';
import 'package:ta_smt4/common/network/api_result.dart';
import 'package:ta_smt4/common/network/datasource_mixin.dart';
import 'package:ta_smt4/common/network/dio_interceptors.dart';
import 'package:ta_smt4/models/request/login_request.dart';

abstract class AuthenticationDatasource {
  Future<APIResult> login(LoginRequest request);
}

@LazySingleton(as: AuthenticationDatasource)
class AuthenticationDatasourceImpl extends AuthenticationDatasource
    with DatasourceExecutionMixin {
  final HTTPClient httpClient;

  AuthenticationDatasourceImpl(this.httpClient);

  @override
  Future<APIResult> login(LoginRequest request) async {
    return await exec(
      httpClient.dio.post(
        Endpoints.auth.login,
        data: request.toJson(),
      ),
    );
  }
}
