import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //todo

    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Foodie'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: RaisedButton(
              child: Text('Add Product'),
              onPressed: () {},
            ),
          ),
          Column(
            children: _products.map((element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/food.jpg'),
                      Text(element)
                    ],
                  ),
                )).toList(),
          ),
        ],
      ),
    ));
  }
}
