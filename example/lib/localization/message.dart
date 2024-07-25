import 'package:translate_intl/translate/translator.dart';

class Message extends Translator {
  @override
  Map<String, Map<String, String>> message() {
    return {
      'en': {
        'hello': 'Hello World',
      },
      'km': {
        'hello': 'សួស្តី',
      }
    };
  }
}
