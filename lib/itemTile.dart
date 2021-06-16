import 'package:catalog_app/productDetail.dart';
import 'package:flutter/material.dart';
import 'catalog.dart';

class ItemTile extends StatelessWidget {
  final Item item;
  const ItemTile({Key key,this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 12),
      child: Hero(
        tag: Key(item.id.toString()),
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 3,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            contentPadding: EdgeInsets.all(8),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>ProductDetail( products:item)));
            },
            title: Image.network(item.imageUrl,fit: BoxFit.cover,height: MediaQuery.of(context).size.height,),
          ),
        ),
      ),
    );
  }
}
