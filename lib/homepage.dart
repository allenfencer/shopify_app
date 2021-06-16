import 'package:catalog_app/catalog.dart';
import 'package:catalog_app/drawer.dart';
import 'package:flutter/material.dart';
import 'itemTile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.search_rounded,size: 28,color: Colors.grey[900],), onPressed: (){},),
        ],
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Shopify',style:TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.deepPurple[900])),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child:DrawerTiles(),
      ),
      body: GridView.builder(
          itemCount: CatalogList.items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder:(BuildContext context, index){
            return ItemTile(item:CatalogList.items[index]);
          },
          ),
    );
  }
}
