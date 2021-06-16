import 'package:catalog_app/address.dart';
import 'package:flutter/material.dart';


class DrawerTiles extends StatelessWidget {
  const DrawerTiles({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[800],
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://assets.devfolio.co/users/143cb13d39df466cb2f16c4ad6701c31/avatar.jpeg'),),
            accountName: Text('ALLEN FENCER',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            accountEmail: Text('allenfencer316@gmail.com',style: TextStyle(fontSize: 16),),
          ),
          // Divider(thickness: 1,color: Colors.white),
          ListTile(
            onTap: (){},
            horizontalTitleGap: 20,
            leading: Icon(Icons.shopping_cart,size: 25,color: Colors.white),
            title: Text('CART',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Address()));
            },
            horizontalTitleGap: 20,
            leading: Icon(Icons.person,size: 25,color: Colors.white),
            title: Text('PROFILE',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
          ),
          // Divider(thickness: 1,color: Colors.white),
          ListTile(
            onTap: (){},
            horizontalTitleGap: 20,
            leading: Icon(Icons.settings,size: 25,color: Colors.white),
            title: Text('SETTINGS',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
          ),
          // Divider(thickness: 1,color: Colors.white),
          ListTile(
            onTap: (){},
            horizontalTitleGap: 20,
            leading: Icon(Icons.help_outline,size: 25,color: Colors.white),
            title: Text('ABOUT',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
          ),
          // Divider(thickness: 1,color: Colors.white),
        ],
      ),
    );
  }
}
