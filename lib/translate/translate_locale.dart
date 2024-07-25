import 'package:flutter/material.dart';
import 'package:translate_intl/localize/localize.dart';

/// A class responsible for initializing and managing the current locale.
///
/// It provides a static method `initialize` to set the current locale based on the
/// `BuildContext` provided.
///
/// Example usage:
/// ```dart
/// TranslateLocale.initialize(context);
/// ```
class TranslateLocale {
  /// The current locale.
  static late Localize locale;

  /// Initializes the `TranslateLocale` with the current `BuildContext`.
  ///
  /// This method should be called once at the start of the application to set
  /// the current locale after Material App build.
  static void initialize(BuildContext context) {
    locale = Localize.of(context);
  }
}
