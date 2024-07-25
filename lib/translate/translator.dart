/// An abstract class representing a translator.
///
/// This class is intended to be extended to provide translation data for different locales.
///
/// Subclasses should implement the `message` method to return a map of translations.
///
/// Example:
/// ```dart
/// class MyTranslator extends Translator {
///   @override
///   Map<String, Map<String, String>> message() {
///     return {
///       'en': {'hello': 'Hello'},
///       'km': {'hello': 'សួស្តី'},
///     };
///   }
/// }
/// ```
abstract class Translator {
  /// Returns a map of translations for different locales.
  ///
  /// The map should contain language codes as keys and another map of key-value pairs
  /// representing translations.
  Map<String, Map<String, String>> message();
}
