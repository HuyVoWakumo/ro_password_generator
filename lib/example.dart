import 'package:ro_password_generator/ro_password_generator.dart';

void main() {
  final password = RoPasswordGenerator.generate(length: 12, includeUpcaseChars: true, excludeSimiliarChars: false);
}