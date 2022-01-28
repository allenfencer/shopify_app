import 'package:catalog_app/screens/payment.dart';
import 'package:catalog_app/providers/cart_provider.dart';
import 'package:catalog_app/widgets/cart_icon.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import '../models/catalog.dart';

class ProductDetail extends StatelessWidget {
  final Item? products;
  const ProductDetail({Key? key, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Shopify',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.deepPurple[900])),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          CartIcon(
            itemToAdd: products,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.grey[300]!.withOpacity(0.3),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${products!.price}.00'.toString(),
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.deepPurple[900],
                    fontWeight: FontWeight.bold),
              ),
              MaterialButton(
                elevation: 0,
                highlightElevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                minWidth: 100,
                height: 50,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Payment(
                                buyItem: products,
                              )));
                },
                child: Text(
                  'BUY',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                color: Colors.grey[900],
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Hero(
            tag: Key(products!.id.toString()),
            child: Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                products!.imageUrl!,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: Text(
              products!.name!,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                dummyText(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget dummyText() {
  return Container(
    alignment: Alignment.centerLeft,
    child: Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit ut tortor pretium viverra suspendisse potenti nullam ac. Egestas diam in arcu cursus euismod. Aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi. Magna fringilla urna porttitor rhoncus dolor purus non enim praesent. Ut pharetra sit amet aliquam id. Placerat in egestas erat imperdiet sed euismod. Mattis pellentesque id nibh tortor id aliquet lectus. Viverra mauris in aliquam sem fringilla. Lacus vel facilisis volutpat est velit. Adipiscing elit duis tristique sollicitudin nibh sit. Rhoncus dolor purus non enim praesent elementum. Tortor aliquam nulla facilisi cras fermentum odio eu.',
      style: TextStyle(color: Colors.grey[500], fontSize: 20),
      textAlign: TextAlign.justify,
    ),
  );
}
