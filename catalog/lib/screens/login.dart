import 'dart:ffi';

import 'package:catalog/catalog_info.dart';
import 'package:flutter/material.dart';

import '../widgets/myTextField.dart';
import 'catalog.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 35),
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(labelText: 'Username'),
              SizedBox(
                height: 20,
              ),
              MyTextField(labelText: 'Password'),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Catalog()));
                },
                child: Container(
                  height: 50,
                  width: 150,
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
