import 'package:translate_intl/translate/translate_locale.dart';

/// An extension on the `String` class to provide translation functionality.
///
/// This extension adds a `tr` getter to the `String` class that retrieves
/// the translated version of the string using the current `TranslateLocale`.
extension TranslateMessage on String {
  /// Retrieves the translated version of the string using the current locale.
  ///
  /// This getter uses the `TranslateLocale` to get the translated string.
  String get tr => TranslateLocale.locale.greeting(this);
}
