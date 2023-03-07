import 'package:flutter/material.dart';
import 'package:headphones/Info.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'constants.dart';
import 'splash.dart';
import 'slider.dart';
import 'home.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SafeArea(
        child: AnimatedSplashScreen(
          splashIconSize: 2000,
          duration: 3000,
          splash: const Splash(),
          nextScreen: MyHomePage(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  // double currentPage = 0;
  int _currentIndex = 0;

  List<String> cardList = [
    "images/headset.png",
    "images/headset2.png",
    "images/headset3.png",
    "images/headset4.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 55.0),
            child: ListView(children: [
              CarouselSlider(
                items: [
                  slider(
                    imageText: cardList[0],
                    value: 1,
                  ),
                  slider(
                    imageText: cardList[1],
                    value: 2,
                  ),
                  slider(
                    imageText: cardList[2],
                    value: 3,
                  ),
                  slider(
                    imageText: cardList[3],
                    value: 4,
                  ),
                ],
                options: CarouselOptions(
                  onScrolled: (value) {},
                  height: 400.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              )
            ]),
          ),
          Layout(
            initialPage: _currentIndex,
          ),
        ]),
      ),
    );
  }
}
