import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.headphones,
              size: 70.0, color: Color.fromARGB(255, 5, 5, 5)),
          // Container(
          //     height: 70.0,
          //     width: 70.0,
          //     decoration: BoxDecoration(
          //         color: Colors.white,
          //         image: DecorationImage(
          //           image: AssetImage("images/headset.png"),
          //         ))),
        ],
      ),
    ));
  }
}
