import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:goodbye_money/tabs.dart';


void main() async {
  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://f67869e3983d4e1698f1c092bd880fb9@o1418292.ingest.sentry.io/4504078280556544';
      options.tracesSampleRate = 1.0;
      options.attachStacktrace = true;
    },
    appRunner: () => runApp(
      SentryScreenshotWidget(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spend Sync App',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 41, 141, 255),
        brightness: Brightness.dark,
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text('Spend Sync App'),
        ),
        body: TabsController(),

            ),
          );
  }
      }
    

