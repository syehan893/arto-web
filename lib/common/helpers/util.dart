class Util {
  static bool falsyChecker(dynamic value) {
    bool isEmpty = false;
    bool isZero = false;
    bool isNull = value == null;
    if (value is int || value is double || value is num) {
      isZero = value == 0 || value == 0.0;
    } else if (!isNull && value is bool) {
      return isEmpty = !value;
    } else {
      try {
        if (!isNull) isEmpty = value?.isEmpty;
      } catch (e) {
        isEmpty = false;
      }
    }
    return isNull || isEmpty || isZero;
  }

  static String emptyStringOnNull(String? value) {
    if (value == null) {
      return '';
    }
    return value;
  }

  static String dashOnEmpty(String? value) {
    if (falsyChecker(value) || value == '') {
      return '-';
    }
    return value!;
  }

  static String toTitleCase(String text) {
    final sentences = text.split(' ');
    String result = '';
    if (sentences.isNotEmpty) {
      for (String word in sentences) {
        if (word.isNotEmpty) {
          final firstLetter = word[0].toUpperCase();
          final restOfLetters = word.substring(1, word.length);
          result += firstLetter + restOfLetters.toLowerCase();
          if (word != sentences.last) {
            result += ' ';
          }
        }
      }
    }
    return result;
  }

  static bool isDouble(String? s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }

  static int calculateAge(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;
    int month1 = currentDate.month;
    int month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age;
  }
}
