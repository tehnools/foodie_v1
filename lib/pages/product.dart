import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('Prodcut thing')),
      ),
      body: Column(
        children: <Widget>[
          Text('asdfdsa'),
          RaisedButton(
            child: Text('back'),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
