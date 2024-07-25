import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:translate_intl/localize/localize.dart';
import 'package:translate_intl/translate/translator.dart';

/// A delegate for managing `Localize` instances.
///
/// This delegate is used by Flutter's localization system to load and provide
/// `Localize` instances based on the current locale.
///
/// Example usage:
/// ```dart
/// TranslateDelegate(translator: MyTranslator());
/// ```
class TranslateDelegate extends LocalizationsDelegate<Localize> {
  /// Creates an instance of `TranslateDelegate`.
  ///
  /// The `translator` parameter is used to set the localization values.
  TranslateDelegate({required Translator translator}) {
    Localize.localizeValue = translator.message();
  }

  @override
  bool isSupported(Locale locale) {
    return Localize.languages.contains(locale.languageCode);
  }

  @override
  Future<Localize> load(Locale locale) {
    return SynchronousFuture<Localize>(Localize(locale));
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate old) {
    return false;
  }
}
