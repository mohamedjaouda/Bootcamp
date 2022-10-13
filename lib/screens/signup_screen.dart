import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:main/screens/home_screen.dart';
import 'package:main/widgets/navigation_bar.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/background3.png'),
          fit: BoxFit.cover,
        )),
        child: Column(children: [
          SizedBox(
            height: 120,
          ),
          Text(
            'Find Your Favorite Place &\nVisit With Us',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            'Signup With',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 260,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SvgPicture.asset('assets/images/google_icon.svg'),
                ),
                Spacer(),
                Text('Sign up with Google',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14)),
                Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MyStatefulWidget()));
              },
              child: Text(
                'Signup Later >',
                style: TextStyle(color: Color.fromARGB(174, 255, 255, 255)),
              ))
        ]),
      ),
    );
  }
}
