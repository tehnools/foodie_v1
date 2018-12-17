import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.tealAccent
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Foodie'),
          ),
          body: ProductManager(startingProduct: 'Food Item')),
    );
  }
}
