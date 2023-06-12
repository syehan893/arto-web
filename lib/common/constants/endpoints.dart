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
  String get getTransactionByEmail => '$_baseUrl/transaction/%s';
  String get getRequestpayment => '$_baseUrl/transaction/getRequestPayment/%s';
  String get transfer => '$_baseUrl/transaction/transfer';
  String get topup => '$_baseUrl/transaction/topUp';
  String get requestPayment => '$_baseUrl/transaction/requestPayment';
  String get requestPaymentApproval => '$_baseUrl/transaction/requestPaymentApproval';
}

class _History {
  const _History();
  String get getHistoryByEmail => '$_baseUrl/histories/%s';
}
