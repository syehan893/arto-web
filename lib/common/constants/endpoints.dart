import 'package:ta_smt4/view/config.dart';
import 'package:ta_smt4/view/screens/user/user.dart';

final String _baseUrl = Config.baseUrl;

class Endpoints {
  static const auth = _Auth();
  static const user = _User();
}

class _Auth {
  const _Auth();
  String get _baseAuth => _baseUrl;
  String get login => '$_baseAuth/login';
}

class _User {
  const _User();
  String get getUser => '$_baseUrl/users';
}
