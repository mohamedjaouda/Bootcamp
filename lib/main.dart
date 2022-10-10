import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/screens/onboarding/screen_1.dart';
import 'package:main/screens/signup_screen.dart';
import 'screens/onboarding/screen_2.dart';
import 'screens/onboarding/screen_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.inter().fontFamily,
      ),
      home: SignupScreen(),
    );
  }
}
