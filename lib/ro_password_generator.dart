library ro_password_generator;

import 'dart:core';
import 'dart:math';

class RoPasswordGenerator {
  static List<String>  _digits         = List.generate(10, (index) => index.toString()); // length = 10
  static List<String>  _lowcaseChars   = List.generate(26, (index) => String.fromCharCode(index + 97)); // length = 26
  static List<String>  _upcaseChars    = List.generate(26, (index) => String.fromCharCode(index + 65)); // length = 26
  static List<String>  _specialChars   = ['!', '@', '#', '\$', '%', '^', '&', '*', '_', '-', '+', '=',  // length = 27
                                          '~', '.', ',', ':', ';', '?', '/', '\\', '|', '(', ')', '[', 
                                          ']', '{', '}'];
  static Random _random = Random();

  RoPasswordGenerator._();

  static String generate({
    int length = 8, 
    bool includeDigits = true, 
    bool includeLowcaseChars = true,
    bool includeUpcaseChars = false,
    bool includeSpecialChars = false,
    bool excludeSimiliarChars = true,
  }) {
    List<String> chars = [];

    if (includeDigits) chars.addAll(_digits);
    if (includeLowcaseChars) chars.addAll(_lowcaseChars);
    if (includeUpcaseChars) chars.addAll(_upcaseChars);
    if (includeSpecialChars) chars.addAll(_specialChars);

    if (chars.isEmpty || (length > chars.length && excludeSimiliarChars)) {
      throw ArgumentError('Password generator configuration invalid');
    }

    String password = '';
    for (int i = 0; i < length; i++) {
      int randomIndex = _random.nextInt(chars.length);
      password += (chars[randomIndex]);
      if (excludeSimiliarChars) chars.removeAt(randomIndex);
    }

    return password;
  }
}
