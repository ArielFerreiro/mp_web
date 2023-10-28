import 'package:flutter/material.dart';
import 'views/home/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'utils/translations.dart';

void main() => runApp(WebPageApp());

class WebPageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ariel Ferreiro Diaz",
      localizationsDelegates: [
        const TranslationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('es', ''),
      ],
      home: HomePage(),
      theme: _theme(),
    );
  }

  ThemeData _theme() {
    var lightTheme = ThemeData.light();

    return lightTheme.copyWith(
        textTheme: lightTheme.textTheme.copyWith(
            bodyLarge: lightTheme.textTheme.bodyLarge!.copyWith(height: 1.25),
            bodyMedium: lightTheme.textTheme.bodyMedium!
                .copyWith(height: 1.25, fontWeight: FontWeight.w800)),
        appBarTheme: AppBarTheme(color: Color.fromARGB(255, 30, 30, 30)));
  }
}
