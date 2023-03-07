import 'package:flutter/material.dart';

class slider extends StatelessWidget {
  const slider({required this.imageText, required this.value});

  final String imageText;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color.fromARGB(255, 41, 34, 34),
        image: DecorationImage(
          image: AssetImage(imageText),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
