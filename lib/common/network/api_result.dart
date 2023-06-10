import 'package:ta_smt4/common/network/api_response.dart';
import 'package:ta_smt4/common/network/network_error.dart';

class APIResult {
  APIResponse? internalResponse;
  bool? isExecError;
  NetworkError? execErrorType;
  String? execErrorMessage;
  int? execStatusCode;
}