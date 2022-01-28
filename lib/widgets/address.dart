import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  const Address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,size: 28,color: Colors.black,),),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0.0),
            child: Container(
              padding: EdgeInsets.all(5),
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.deepPurple[900],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.network('https://www.mastercard.us/content/dam/public/mastercardcom/na/us/en/consumers/find-a-card/other/card-image-standard-credit-card.png',fit: BoxFit.cover,),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    child: Text('Address',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
                  ),
                ),
                ListTile(
                  onTap: (){},
                  title: Text('2 Petre Melikshvili St.',style: TextStyle(fontSize: 18),),
                  subtitle: Text('0162, Tbilisi',style: TextStyle(fontSize: 16),),
                  trailing: Icon(Icons.radio_button_checked,color: Colors.black,size: 30,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
