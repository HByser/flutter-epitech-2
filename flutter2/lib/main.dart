import 'package:flutter/material.dart';
import 'package:timetracker/Authentication/LoginScreen.dart';
import 'package:timetracker/Authentication/RegisterScreenFirstStep.dart';
import 'package:timetracker/Authentication/RegisterScreenSecondStep.dart';
import 'package:timetracker/Profile/ProfileScreen.dart';
import 'calendar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/registerOne': (context) => RegisterScreenFirstStep(),
        '/registerTwo': (context) => RegisterScreenSecondStep(),
        '/login': (context) => LoginScreen(),
        '/profile': (context) => ProfileScreen(),
        '/calendar': (context) => CalendarUser(),
      },
    );
  }
}
