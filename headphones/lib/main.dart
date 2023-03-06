import 'package:flutter/material.dart';
import 'package:headphones/Info.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'constants.dart';
import 'splash.dart';
import 'home.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          duration: 3000,
          splash: const Splash(),
          nextScreen: MyHomePage(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.blue,
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

  void initialization() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/hp2.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Layout(),
      ]),
    );
  }
}
