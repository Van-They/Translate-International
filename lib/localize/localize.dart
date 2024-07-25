import 'package:flutter/material.dart';

/// A class responsible for managing localization and retrieving localized strings.
///
/// This class uses the `Locale` to provide localized strings based on the current
/// language.
///
/// Example usage:
/// ```dart
/// Localize localize = Localize(Locale('en'));
/// print(localize.greeting('hello')); // Outputs: Hello World
/// ```
class Localize {
  /// Creates a `Localize` instance with the specified `Locale`.
  Localize(this.locale);

  /// The current locale.
  final Locale locale;

  /// Retrieves the `Localize` instance from the provided `BuildContext`.
  ///
  /// This method is used to access localization data from the widget tree.
  static Localize of(BuildContext context) {
    return Localizations.of(context, Localize)!;
  }

  /// A list of supported languages.
  static List<String> get languages => localizeValue.keys.toList();

  /// Retrieves the greeting string for the given key.
  ///
  /// If the key is not found, the method returns the key itself.
  String greeting(String key) {
    try {
      if (localizeValue[locale.languageCode]![key] == null) {
        return key;
      }
      return localizeValue[locale.languageCode]![key]!;
    } on Exception {
      return key;
    }
  }

  /// A map containing localization values for different languages.
  static Map<String, Map<String, String>> localizeValue = {
    'en': {
      'hello': 'Hello World',
    },
    'kh': {
      'hello': 'សួស្តី',
    }
  };
}
