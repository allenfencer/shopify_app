import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/screens/productDetail.dart';
import 'package:catalog_app/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class ItemTile extends StatelessWidget {
  final Item? item;
  const ItemTile({
    Key? key,
    this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Hero(
        tag: Key(item!.id.toString()),
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: InkWell(
            onLongPress: () =>
                context.read<CartProvider>().addItemsToCart(item),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProductDetail(
                          products: item,
                        ))),
            child: Container(
              padding: EdgeInsets.all(8),
              child: Image.network(
                item!.imageUrl!,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
