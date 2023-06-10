class RegularExpressions {
  static RegExp email = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  static RegExp devEmail = RegExp(r'^[\w-\.+]+@([\w-]+\.)+[\w-]{2,4}$');
  static RegExp password =
      RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[@$!%*#?&]).{8,}$');
}
