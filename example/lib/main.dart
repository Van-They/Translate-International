import 'package:example/localization/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:translate_intl/delegate/translate_delegate.dart';
import 'package:translate_intl/extension/extension.dart';
import 'package:translate_intl/translate/translate_locale.dart';

/// The entry point of the Flutter application.
///
/// This function initializes the app by calling `runApp` with an instance of `MyApp`.
void main() {
  runApp(const MyApp());
}

/// The root widget of the application.
///
/// This widget sets up the `MaterialApp` with localization support and initializes
/// the localization settings.
class MyApp extends StatelessWidget {
  /// Creates a `MyApp` instance.
  ///
  /// The `super.key` parameter is passed to the superclass `StatelessWidget`.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// The title of the application, used by the OS task switcher.
      title: 'Flutter Demo',

      /// The locales supported by the application.
      supportedLocales: const [
        Locale('en', 'EN'), // English
        Locale('km', 'KH'), // Khmer
      ],

      /// The initial locale of the application.
      locale: const Locale('km'),
      // Set Khmer as the initial locale

      /// The list of delegates that handle the localization of the application.
      localizationsDelegates: [
        /// A delegate that provides localized values based on the `Translator` implementation.
        TranslateDelegate(translator: Message()),

        /// Default delegates for material design and Cupertino (iOS) widgets.
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      /// A builder that initializes localization settings before building the widget tree.
      builder: (context, child) {
        TranslateLocale.initialize(context);
        return child!;
      },

      /// The home widget of the application.
      home: const MyPager(),
    );
  }
}

/// A stateful widget representing the main page of the application.
///
/// This widget displays a simple `Scaffold` with a `Center` widget containing a localized text.
class MyPager extends StatefulWidget {
  /// Creates a `MyPager` instance.
  ///
  /// The `super.key` parameter is passed to the superclass `StatefulWidget`.
  const MyPager({super.key});

  @override
  State<MyPager> createState() => _MyPagerState();
}

class _MyPagerState extends State<MyPager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// The body of the `Scaffold` containing the main content of the page.
      body: Center(
        child: Text(
          'hello'.tr,
        ), // Displays localized 'hello' text. it will display សួស្តី because locale is set to 'km'
      ),
    );
  }
}
