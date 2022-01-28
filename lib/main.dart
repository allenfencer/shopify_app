import 'package:catalog_app/providers/cart_provider.dart';
import 'package:catalog_app/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'screens/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>CartProvider()),
        ChangeNotifierProvider(create: (_)=>CounterProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.deepPurple[800],
          fontFamily: GoogleFonts.ubuntu().fontFamily,
        ),
        home: Login(),
      ),
    ),
  );
}
