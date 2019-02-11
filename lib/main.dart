// Standard Library Imports
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

// Routes
// import './pages/auth.dart';
import './products.dart';
import './product_control.dart';

import './pages/product_management.dart';
import './pages/home.dart';
import './pages/product.dart';

void main() {
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, String>> _products = [];

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index){
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      theme:
          ThemeData(primarySwatch: Colors.teal, accentColor: Colors.tealAccent),
      // home: AuthPage(),
      routes: {
        '/': (BuildContext context) => HomePage(),
        '/product_managment': (BuildContext context) => ProductManagmentPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }
        if (pathElements[1] == 'product') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute(
            builder: (BuildContext context) =>
                ProductPage(_products[index]['title'], _products[index]['image']),
          );
        } else {
          return null;
        }
      },
    );
  }
}
