/*
   1.Reposiveness in news and charts section.
   2.Caching in city fetch of map.
   3.Radius of circles in map.
   4.Make the location compare logic.
   5.Onboarding screens.
*/
import 'package:falcon_corona_app/screens/aok_screen.dart';
import 'package:falcon_corona_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'screens/begin_screen.dart';
import 'screens/in_quarantine_screen.dart';
import 'screens/start_screen.dart';
import 'screens/stats_screen.dart';
import 'screens/warning_screen.dart';
import 'screens/temperature_screen.dart';
import 'services/shared.dart';
import 'services/firebaseService.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Falcon',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => StartScreen(),
        '/begin': (context) => BeginScreen(),
        '/temperature': (context) => TemperatureScreen(),
        '/inquarantine': (context) => InQuarantineScreen(),
        '/warning': (context) => HomeScreen(),
        '/aok': (context) => AOKScreen(),
        '/stats': (context) => StatsScreen()
      },
    );
  }

  @override
  void initState() {
    super.initState();
    Shared.initShared();
    // DatabaseService.initDatabase();
    FirebaseService.initFirebaseService();
  }
}
