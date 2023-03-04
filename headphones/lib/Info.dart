import "package:flutter/material.dart";
import "package:headphones/circle.dart";
import "package:headphones/constants.dart";

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 435,
              width: 400,
              padding: EdgeInsets.all(5),
              margin: EdgeInsetsDirectional.fromSTEB(30, 50, 30, 0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/headset.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child:
                        Icon(Icons.arrow_back, color: Colors.white, size: 30),
                  ),
                  SizedBox(
                    height: 475,
                  ),
                  Text(
                    "Solo Pro",
                    style: TextStyle(
                        color: Color.fromARGB(255, 252, 251, 251),
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "JBL T460BT Extra Boss Wireless",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 27,
                      color: Color.fromARGB(255, 250, 249, 249),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      //Draw a circle with size 20
                      Circle(
                        colour: Color.fromARGB(255, 252, 251, 251),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Circle(
                        colour: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Circle(
                        colour: Colors.yellow,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Circle(
                        colour: Colors.blue,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("• JBL Pure Bass Sound", style: kParaStyle),
                  Text("• Quick charging with 5min providing 2 hours",
                      style: kParaStyle),
                  Text("• Playtime Wireless Bluetooth Streaming",
                      style: kParaStyle),
                  Text("• Multipoint Connection to all type of devices",
                      style: kParaStyle),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Price", style: kParaStyle),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$412.09",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Container(
                          //Create a container with a Topleft border radius of 20
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Colors.red,
                          ),
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_basket_rounded,
                              color: Colors.white,
                            ),
                            label: Text(
                              "Add to cart",
                              style: TextStyle(color: Colors.white),
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
