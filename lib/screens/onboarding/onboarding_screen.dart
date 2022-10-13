import 'package:flutter/material.dart';
import 'package:main/screens/signup_screen.dart';

class TestScreen extends StatelessWidget {
  final List<OnbordingData> list = [
    OnbordingData(
      imagePath: "assets/images/background1.png",
      title: "See List\nOf Hotels\nAround\nThe\nWorld.",
      desc:
          "Let the adventure begin and travel with us\nfor the finest hotel and vacation deals.",
    ),
    OnbordingData(
      imagePath: "assets/images/background2.png",
      title: "Booking,\nChecking In & Out.",
      desc: "Hotelly allows you to check in from your phone with no hassle.",
    ),
    OnbordingData(
      imagePath: "assets/images/background_home3.png",
      title: "List Your Favorites\nIn One\nPlace.",
      desc:
          "Let the adventure begin and travel with us\nfor the finest hotel and vacation deals.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreen(
      list as List<OnbordingData>,
      MaterialPageRoute(builder: (context) => SignupScreen()),
    );
  }
}

/// A IntroScreen Class.
///
///
class IntroScreen extends StatefulWidget {
  static final PageController controller = PageController();
  final List<OnbordingData> onbordingDataList;
  final MaterialPageRoute? pageRoute;
  static MaterialPageRoute? fakePageRoute;
  static int currentPage = 0;
  static bool lastPage = false;
  IntroScreen(this.onbordingDataList, this.pageRoute) {
    IntroScreen.fakePageRoute = pageRoute;
  }

  static void skipPage(BuildContext context) {
    Navigator.push(context, IntroScreen.fakePageRoute!);
  }

  @override
  IntroScreenState createState() {
    return IntroScreenState();
  }
}

class IntroScreenState extends State<IntroScreen> {
  void _onPageChanged(int page) {
    setState(() {
      IntroScreen.currentPage = page;
      if (IntroScreen.currentPage == widget.onbordingDataList.length - 1) {
        IntroScreen.lastPage = true;
      } else {
        IntroScreen.lastPage = false;
      }
    });
  }

  Widget _buildPageIndicator(int page) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: page == IntroScreen.currentPage ? 10.0 : 6.0,
      width: page == IntroScreen.currentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: page == IntroScreen.currentPage ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 20,
            child: PageView(
              children: widget.onbordingDataList,
              controller: IntroScreen.controller,
              onPageChanged: _onPageChanged,
            ),
          ),
        ],
      ),
    );
  }
}

class OnbordingData extends StatefulWidget {
  final imagePath;
  final title;
  final desc;

  OnbordingData({this.imagePath, this.title, this.desc});

  @override
  _OnbordingDataState createState() =>
      _OnbordingDataState(this.imagePath, this.title, this.desc);
}

class _OnbordingDataState extends State<OnbordingData> {
  final imagePath;
  final title;
  final desc;
  _OnbordingDataState(this.imagePath, this.title, this.desc);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // const SizedBox(
              //   height: 120,
              // ),
              Container(
                height: size.height * 0.4,
                child: Text(
                  title,
                  style: const TextStyle(
                    height: 1,
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                    wordSpacing: 3,
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 12,
              // ),
              Container(
                height: size.height * 0.33,
                child: Text(
                  desc,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 219, 215, 204),
                      fontSize: 16,
                      fontWeight: FontWeight.w100),
                ),
              ),
              // const SizedBox(
              //   height: 80,
              // ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                TextButton(
                  child: const Text("NEXT >",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0)),
                  onPressed: () => IntroScreen.lastPage
                      ? IntroScreen.skipPage(context)
                      : IntroScreen.controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
