import 'package:flutter/foundation.dart';

class Config {
  static const environment = String.fromEnvironment('ENV',
      defaultValue: 'DEV');
  static final Map<String, Map<String, dynamic>> _args = {
    'DEV': _dev,
  };
  static const String _keyIsLogEnable = 'isLogEnable';
  static const String _keyBaseUrl = 'baseUrl';
  static const String _keyConnectTimeout = 'connectTimeout';
  static const String _keyReceiveTimeout = 'receiveTimeout';

  static final _dev = {
    _keyIsLogEnable: true,
    _keyBaseUrl: '13.229.119.11:3000/api/',
    _keyConnectTimeout: 30 * 1000,
    _keyReceiveTimeout: 30 * 1000,
  };

  static bool get isLogEnable =>
      kReleaseMode ? false : _args[environment]![_keyIsLogEnable] as bool;

  static String get baseUrl => _args[environment]![_keyBaseUrl] as String;

  static int get connectTimeout =>
      _args[environment]![_keyConnectTimeout] as int;

  static int get receiveTimeout =>
      _args[environment]![_keyReceiveTimeout] as int;
}
