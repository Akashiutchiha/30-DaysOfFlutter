import 'package:catalog/selected.dart';
import 'package:flutter/material.dart';
import 'package:catalog/selected.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              title: Text(
                'Cart',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            body: Container(
              child:
                  Consumer<Selected_Catalog>(builder: (context, value, child) {
                return Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: value.checked.length,
                        itemBuilder: (context, index) {
                          final item = value.checked[index];
                          return ListTile(
                            title: Text(
                              item,
                              style: TextStyle(color: Colors.black),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      color: Colors.yellow,
                      child: Center(
                        child: Text(
                          '${value.checked.length * 42}',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),
                    )
                  ],
                );
              }),
            )));
  }
}
