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
## Translate International
[![null safety](https://img.shields.io/badge/null-safety-brightgreen)](https://dart.dev/null-safety)

`translate_intl` is a Flutter package that provides an easy way to handle translations and localization in your app. It simplifies the process of managing different languages and displaying localized content.

## Features

- Localized Translations: Easily manage and access translations for multiple languages.
- Flexible Locale Management: Dynamically set and switch between different locales.
- Extension for Easy Translation: Use a simple extension to translate strings throughout your app.
- Custom Localization Delegate: Integrate with Flutter's localization system using a custom delegate.

## Getting started
## 1. Add Dependency:
Add `translate_intl` `flutter_localizations` `intl` to your pubspec.yaml file:
```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  intl: ^0.18.1
  translate_inl: ^1.0.0  # Replace with the latest version
```
## 2. Set Up Localizations:
Initialize localization in your `MaterialApp`:
```dart
import 'package:flutter/material.dart';
import 'package:translate_intl/translate/translate_delegate.dart';
import 'package:translate_intl/translate/translator.dart';
import 'package:translate_intl/translate/translate_locale.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      supportedLocales: const [
        Locale('en', 'EN'),
        Locale('km', 'KH'),
      ],
      locale: const Locale('km'),
      localizationsDelegates: [
        TranslateDelegate(translator: Message()),
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      builder: (context, child) {
        TranslateLocale.initialize(context);
        return child!;
      },
      home: const MyPager(),
    );
  }
}
```
## 3. Define Translations:
Create your translations using the Translator class and Localize class:
```dart
class Message extends Translator {
  @override
  Map<String, Map<String, String>> message() {
    return {
      'en': {'hello': 'Hello'},
      'km': {'hello': 'សួស្តី'},
    };
  }
}
```
## 4. Use Translations in Your Widgets:
Use the `.tr` extension to translate strings:
```dart
class MyPager extends StatefulWidget {
  const MyPager({super.key});

  @override
  State<MyPager> createState() => _MyPagerState();
}

class _MyPagerState extends State<MyPager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('hello'.tr),//will display សួស្តី
      ),
    );
  }
}

```
## Usage

Here’s a quick example of how to use the package:

```dart
import 'package:flutter/material.dart';
import 'package:translate_intl/translate/translate_delegate.dart';
import 'package:translate_intl/translate/translator.dart';
import 'package:translate_intl/translate/translate_locale.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      supportedLocales: const [
        Locale('en', 'EN'),
        Locale('km', 'KH'),
      ],
      locale: const Locale('km'),
      localizationsDelegates: [
        TranslateDelegate(translator: Message()),
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      builder: (context, child) {
        TranslateLocale.initialize(context);
        return child!;
      },
      home: const MyPager(),
    );
  }
}

```

## Additional information

- Issues: Report any issues or bugs via the GitHub issues page.

For more details and advanced usage, refer to the example folder.