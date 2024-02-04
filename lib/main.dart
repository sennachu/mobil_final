import 'package:application_1/screens/examsScreen.dart';
import 'package:application_1/screens/homeScreen.dart';
import 'package:application_1/screens/loginScreen.dart';
import 'package:application_1/screens/paymentScreen.dart';
import 'package:application_1/screens/profileScreen.dart';
import 'package:application_1/screens/welcomeScreen.dart';
import 'package:application_1/screens/yourClassScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game App',
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => Homescreen(),
        '/login': (context) => Loginscreen(),
        '/profile': (context) => Profilescreen(),
        '/welcome': (context) => Welcomescreen(),
        '/yourclass': (context) => ClassScreen(),
        '/exams': (context) => ExamsScreen(),
        '/payment': (context) => PaymentScreen(),
      },
      initialRoute: '/welcome',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
        fontFamily: "BabesNeue"
      ),
    );
  }
}
