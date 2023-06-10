import 'package:ta_smt4/common/constants/regular_expression.dart';
import 'package:ta_smt4/common/helpers/util.dart';

class Validator {
  static bool isEmpty({String? value}) {
    return Util.falsyChecker(value);
  }

  static bool isEmailFormatValid({String? value, bool enableTestEmail = true}) {
    // return
    // value != null && !enableTestEmail
    //     ?
    // RegularExpressions.email.hasMatch(value!);
    // :
    if (!enableTestEmail) {
      return RegularExpressions.email.hasMatch(value!);
    }
    return RegularExpressions.devEmail.hasMatch(value!);
  }

  static bool isPasswordFormatValid({String? value}) {
    return value != null && RegularExpressions.password.hasMatch(value);
  }
}
