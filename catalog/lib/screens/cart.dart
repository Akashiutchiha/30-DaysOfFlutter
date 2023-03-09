import 'package:catalog/selected.dart';
import 'package:flutter/material.dart';

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
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: Selected.length,
                      itemBuilder: (context, index) {
                        final item = Selected[index];
                        return ListTile(
                          title: Text(item),
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
                        'Total: 170',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
