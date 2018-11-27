import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Foodie'),
      ),
      body: Card(
        child: Column(
          children: <Widget>[Image.asset('assets/food.jpg'), Text('Food Paradies')],
        ),
      ),
    ));
  }
}
