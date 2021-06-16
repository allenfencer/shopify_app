import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SizedBox(height: 30,),
          Container(
            height: 280,
              child: Image.asset('images/loginAsset/login1.png',fit: BoxFit.cover,),
          ),
          Text('Welcome Back',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              style: TextStyle(fontSize: 20),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(fontSize: 18,color: Colors.deepPurple[900]),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.deepPurple[900],width: 2)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.deepPurple[900],width: 2)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              style: TextStyle(fontSize: 20),
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 18,color: Colors.deepPurple[900]),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.deepPurple[900],width: 2)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.deepPurple[900],width: 2)),

              ),
            ),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(30),
            child: MaterialButton(
              elevation: 0,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>HomePage()));
              },
              color: Colors.deepPurple[900],
              textColor: Colors.white,
              height: 50,
              child: Text('Login',style: TextStyle(fontSize: 25),),
              minWidth: 100,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ],
      ),
    );
  }
}

