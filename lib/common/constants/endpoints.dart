import 'package:ta_smt4/view/config.dart';

final String _baseUrl = Config.baseUrl;

class Endpoints {
  static const auth = _Auth();
}
class _Auth {
  const _Auth();
  String get _baseAuth => _baseUrl;
  String get login => '$_baseAuth/login';
}
