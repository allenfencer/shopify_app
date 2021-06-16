import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'catalog.dart';

class Cart extends StatelessWidget {
  final Item buyItem;
  const Cart({Key key,this.buyItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),
          onPressed: () {Navigator.pop(context);},
        ),
        title: Text('Order Details', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.deepPurple[900])),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          // Container(
          //   padding: EdgeInsets.all(20),
          //   child:Text('My Cart',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.deepPurple[900]),)
          // ),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.grey[300].withOpacity(0.5),
                    padding: EdgeInsets.all(10),
                    height: 160,
                    width: 160,
                    child: Image.network(buyItem.imageUrl,fit: BoxFit.fitHeight,),
                  ),
                ),
                SizedBox(width: 25,),
                Container(
                  width: MediaQuery.of(context).size.width/2.5,
                  alignment: Alignment.centerRight,
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(buyItem.name,style: TextStyle(fontSize: 20),),
                      Text('\$${buyItem.price.toString()}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MaterialButton(
                            onPressed: (){},
                            minWidth: 40,
                            height: 40,
                            padding: EdgeInsets.all(5),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),side:BorderSide(width: 1,color: Colors.grey) ),
                            child: Text('-',style: TextStyle(fontSize: 20,color: Colors.grey[800]),),
                          ),
                          SizedBox(height: 25,width:30,child: Text('1',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,)),
                          MaterialButton(
                            onPressed: (){},
                            minWidth: 40,
                            height: 40,
                            padding: EdgeInsets.all(5),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),side:BorderSide(width: 1,color: Colors.grey) ),
                            child: Text('+',style: TextStyle(fontSize: 20,color: Colors.grey[800]),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 20,top: 20,bottom: 10),
              child:Text('Delivery Location',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
          ),
          ListTile(
            onTap: (){},
            leading: Padding(
              padding: const EdgeInsets.all(15),
              child: Icon(Icons.location_pin,size: 30,color: Colors.blue,),
            ),
            title: Text('2 Petre Melikshvili St.',style: TextStyle(fontSize: 18),),
            subtitle: Text('0162, Tbilisi',style: TextStyle(fontSize: 16),),
            trailing: Icon(Icons.arrow_forward_ios,size: 22,),
          ),
          Container(
              padding: EdgeInsets.only(left: 20,top: 20,bottom: 10),
              child:Text('Payment Method',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
          ),
          ListTile(
            onTap: (){},
            leading: Image.network('https://image.shutterstock.com/image-photo/kiev-ukraine-september-30-2017-600w-740189848.jpg'),
            title: Text('VISA CLASSIC',style: TextStyle(fontSize: 18),),
            subtitle: Text('****-0921',style: TextStyle(fontSize: 16),),
            trailing: Icon(Icons.arrow_forward_ios,size: 22,),
          ),
          SizedBox(height: 30,),
          Container(
              padding: EdgeInsets.only(left: 20,top: 20,bottom: 10),
              child:Text('Order Info',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 22,right: 30),
            leading: Text('Subtotal',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey[600]),),
            trailing: Text('\$${buyItem.price.toString()}.00',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.grey[900]),),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 22,right: 30),
            leading: Text('Shipping Cost',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey[600]),),
            trailing: Text('\$15.00',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.grey[900]),),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 22,right: 30),
            leading: Text('Total',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey[600]),),
            trailing: Text('\$${buyItem.price+15}.00',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.grey[900]),),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: MaterialButton(
              onPressed: (){},
              elevation: 0,
              highlightElevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              padding: EdgeInsets.all(20),
              color: Colors.deepPurple[900],
              child: Text('CHECKOUT \$${buyItem.price+15}.00',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
            ),
          ),
        ],
      ),
    );
  }
}
