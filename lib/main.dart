import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/screens/favorites_screen.dart';
import 'package:main/screens/home_screen.dart';
import 'package:main/screens/onboarding/onboarding_screen.dart';
import 'package:main/screens/signup_screen.dart';
import 'package:main/widgets/navigation_bar.dart';

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
      title: 'Hotelly',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.inter().fontFamily,
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.transparent))), // Here Im having the error
      ),
      home: TestScreen(),
    );
  }
}
