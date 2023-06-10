import 'package:ta_smt4/common/network/api_result.dart';
import 'package:ta_smt4/models/request/login_request.dart';

abstract class AuthenticationDatasource {
  Future<APIResult> login(LoginRequest request);
}