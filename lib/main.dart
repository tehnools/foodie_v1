import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

// import './pages/home.dart';
import './pages/auth.dart';
import './pages/product_management.dart';
import './pages/home.dart';



void main() {
  // debugPaintSizeEnabled = true; 
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      theme:
          ThemeData(primarySwatch: Colors.teal, accentColor: Colors.tealAccent),
      // home: AuthPage(),
      routes: {
        '/' : (BuildContext context) => HomePage(),
        '/product_managment' : (BuildContext context) => ProductManagmentPage(),
      },
    );
  }
}
