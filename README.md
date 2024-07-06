<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->


# RoPasswordGenerator

A flutter package that randomly generates password with digits, lowcase characters, upcase characters and special characters.


## Usage

```dart
final password = RoPasswordGenerator.generate(length: 12, includeUpcaseChars: true, excludeSimiliarChars: false);
```

## Installation 

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  ro_password_generator: ^0.0.1
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:ro_password_generator/ro_password_generator.dart';
```
