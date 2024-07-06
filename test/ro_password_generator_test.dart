import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:core';
import 'package:ro_password_generator/ro_password_generator.dart';

void main() {
  group('Password generator', () {
    test('Password include digits and lowcase chars, exclude similiar chars', () {
      final password = RoPasswordGenerator.generate(length: 12);
      RegExp regex = RegExp(r'^[0-9a-z]+$');
      debugPrint(password);
      expect(regex.hasMatch(password), true);
    });

    test('Password not include any character ', () {
      final password = RoPasswordGenerator.generate(length: 12, includeDigits: false, includeLowcaseChars: false);
      RegExp regex = RegExp(r'^[0-9]+$');
      debugPrint(password);
      expect(regex.hasMatch(password), true);

      // Should be failed because there is no character included
    });

    test('Password include digits, lowcase and upcase characters, exclude similiar chars ', () {
      final password = RoPasswordGenerator.generate(length: 12, includeUpcaseChars: true);
      RegExp regex = RegExp(r'^[0-9a-zA-Z]+$');
      debugPrint(password);
      expect(regex.hasMatch(password), true);
    });

    test('Password include digits, lowcase and upcase characters, not exclude similiar chars ', () {
      final password = RoPasswordGenerator.generate(length: 12, includeUpcaseChars: true, excludeSimiliarChars: false);
      RegExp regex = RegExp(r'^[0-9a-zA-Z]+$');
      debugPrint(password);
      expect(regex.hasMatch(password), true);
    });

    test('Password with length 0 ', () {
      final password = RoPasswordGenerator.generate(length: 0);
      debugPrint(password);
      expect(password, '');
    });
    
  });
}
