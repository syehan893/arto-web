import 'package:ta_smt4/view/config.dart';

final String _baseUrl = Config.baseUrl;

class Endpoints {
  static const auth = _Auth();
  static const user = _User();
  static const transaction = _Transaction();
  static const history = _History();
}

class _Auth {
  const _Auth();
  String get _baseAuth => _baseUrl;
  String get login => '$_baseAuth/login';
}

class _User {
  const _User();
  String get getUser => '$_baseUrl/getUserByEmail/%s';
}

class _Transaction {
  const _Transaction();
  String get getTransactionByEmail => '$_baseUrl/transactions/%s';
  String get getRequestpayment => '$_baseUrl/transactions/getRequestPayment/%s';
  String get transfer => '$_baseUrl/transactions/transfer';
  String get topup => '$_baseUrl/transactions/topUp';
  String get requestPayment => '$_baseUrl/transactions/requestPayment';
  String get requestPaymentApproval => '$_baseUrl/transactions/requestPaymentApproval';
}

class _History {
  const _History();
  String get getHistoryByEmail => '$_baseUrl/histories/%s';
}
