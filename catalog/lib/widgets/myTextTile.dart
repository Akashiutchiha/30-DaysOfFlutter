import 'package:flutter/material.dart';
import 'package:catalog/screens/cart.dart';
import 'package:provider/provider.dart';

import '../selected.dart';

class MyTextTile extends StatefulWidget {
  MyTextTile({super.key, required this.title});
  final String? title;

  @override
  State<MyTextTile> createState() => _MyTextTileState();
}

class _MyTextTileState extends State<MyTextTile> {
  IconData icon = Icons.add;

  void changeIcon() {
    if (icon == Icons.add) {
      icon = Icons.check;
      print("Changed");
    } else {
      icon = Icons.add;
      print("Changed");
    }
  }

  void add() {
    Provider.of<Selected_Catalog>(context, listen: false).add(widget.title!);
    print("Added");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListTile(
        trailing: IconButton(
            icon: Icon(icon),
            onPressed: () {
              setState(() {
                changeIcon();
                add();
              });
            }),
        leading: Container(
          color: Colors.grey,
          height: 100,
          width: 50,
        ),
        title: Text(
          widget.title!,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
