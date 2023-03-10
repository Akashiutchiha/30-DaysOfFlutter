import 'package:catalog/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'selected.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Selected_Catalog()),
      ],
      child: MaterialApp(
        home: SafeArea(child: Login()),
      ),
    );
  }
}
