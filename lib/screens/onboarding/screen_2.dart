import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/background2.png'),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
              ),
              Text(
                'Booking,\nChecking In & Out.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w900,
                  wordSpacing: 3,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Hotelly allows you to check in from your phone with no hassle.',
                style: TextStyle(
                    color: Color.fromARGB(255, 219, 215, 204),
                    fontSize: 16,
                    fontWeight: FontWeight.w100),
              ),
              SizedBox(
                height: 12,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Next >',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w100),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
