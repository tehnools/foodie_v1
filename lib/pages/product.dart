import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageurl;

  ProductPage(this.title, this.imageurl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text(title)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(imageurl),
          Container(padding: EdgeInsets.all(10.0), child: Text('asdfdsa')),
          Container(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              child: Text('back'),
              onPressed: () => Navigator.pop(context),
            ),
          )
        ],
      ),
    );
  }
}
