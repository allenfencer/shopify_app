import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class CartIcon extends StatelessWidget {
  final Item? itemToAdd;
  const CartIcon({Key? key, this.itemToAdd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(5),
      child: Stack(
        children: [
          Icon(
            Icons.shopping_cart,
            size: 30,
            color: Theme.of(context).primaryColor,
          ),
          Positioned(
              left: 15,
              top: 0,
              child: CircleAvatar(
                minRadius: 5,
                maxRadius: 8,
                backgroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    context.watch<CartProvider>().count.toString(),
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
