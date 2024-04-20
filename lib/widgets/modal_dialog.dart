import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; // Import Flutter's localization package

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      // Add the necessary localization delegates
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        // Add more delegates if needed
      ],
      // Specify the supported locales
      supportedLocales: [
        const Locale('en', 'US'), // English - United States
        // Add more supported locales if needed
      ],
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Handle button tap
          },
          child: Text('Tap Me'),
        ),
      ),
    );
  }
}
