import 'package:headphones/Info.dart';

import 'constants.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text(
            "Golden Brain",
            style: TextStyle(
                color: Color.fromARGB(255, 250, 249, 249),
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              'images/hp1.jpg',
            ),
          ),
          trailing: Icon(
            Icons.sort_rounded,
            size: 40,
            color: Color.fromARGB(255, 250, 249, 249),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: RotatedBox(
                  child: Text(
                    "WIRELESS",
                    style: TextStyle(
                        color: Color.fromARGB(255, 252, 251, 251),
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                  quarterTurns: 1),
            ),
            Column(
              children: [
                Text(
                  "Head -",
                  style: ktextStyle,
                ),
                Text(
                  "Phones",
                  style: ktextStyle,
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 320,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("JBL T460BT", style: ktextStyle),
            Text(
              "Extra Bass Wireless",
              style: TextStyle(
                  color: Color.fromARGB(255, 248, 247, 247),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 100,
            ),
            MaterialButton(
              height: 50,
              minWidth: 180,
              elevation: 5,
              shape: ShapeBorder.lerp(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  1),
              color: Colors.orange,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InfoPage()),
                );
              },
              child: Text(
                "Get it now",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    elevation: 0,
                    backgroundColor: Color.fromARGB(255, 53, 49, 49),
                    onPressed: () {},
                    child: Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                  MaterialButton(
                    height: 55,
                    onPressed: () {},
                    child: Text(
                      '01 of 05',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    shape: ShapeBorder.lerp(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        1),
                    color: Color.fromARGB(255, 53, 49, 49),
                  ),
                  FloatingActionButton(
                    elevation: 0,
                    backgroundColor: Color.fromARGB(255, 53, 49, 49),
                    onPressed: () {},
                    child: Icon(Icons.arrow_forward_ios, color: Colors.white),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
