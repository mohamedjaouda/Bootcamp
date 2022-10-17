import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:main/widgets/search_bar_widget.dart';

class HeadingSearchWidget extends StatelessWidget {
  const HeadingSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/homepagebackground.png',
          fit: BoxFit.fill,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: const Align(
                alignment: Alignment.center,
                child: Text("HOTELLY",
                    style: TextStyle(
                        color: Colors.white, fontSize: 40, letterSpacing: 3)),
              ),
            ),
            SearchInput(),
          ],
        )
      ],
    );
  }
}
