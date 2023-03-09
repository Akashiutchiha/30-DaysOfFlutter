import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    required this.labelText,
  });
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.yellow,
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.yellow, width: 2.0),
        ),
      ),
    );
  }
}
