import 'package:flutter/material.dart';
import 'package:catalog/catalog_info.dart';
import '../widgets/myTextTile.dart';
import 'cart.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Catalog',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: Colors.yellow,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cart(),
                  ),
                );
              },
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Container(
          child: ListView.builder(
            itemCount: catalog.length,
            itemBuilder: (context, index) {
              final item = catalog[index];
              return MyTextTile(
                title: item['name'],
              );
            },
          ),
        ),
      ),
    );
  }
}
