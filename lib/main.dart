import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import './product_manager.dart';
// import './pages/home.dart';
import './pages/auth.dart';



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
      home: AuthPage(),
    );
  }
}
