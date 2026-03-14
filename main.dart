import 'package:flutter/material.dart';
import 'login_screenfltter run.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Student System",
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 173, 93, 120),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 167, 84, 112),
          foregroundColor: const Color.fromARGB(255, 216, 216, 216),
        ),
      ),

      home: LoginScreen(),
    );
  }
}