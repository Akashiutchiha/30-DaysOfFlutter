import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colour,
      ),
    );
  }
}
