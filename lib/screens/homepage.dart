import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/cart_icon.dart';
import 'package:catalog_app/widgets/drawer.dart';
import 'package:catalog_app/widgets/itemTile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          CartIcon(),
          SizedBox(
            width: 15,
          )
        ],
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Shopify',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.deepPurple[900])),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: DrawerTiles(),
      ),
      body: GridView.builder(
        itemCount: CatalogList.items.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, index) {
          return ItemTile(
            item: CatalogList.items[index],
          );
        },
      ),
    );
  }
}
