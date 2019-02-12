import 'package:flutter/material.dart';
import 'dart:async';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageurl;

  ProductPage(this.title, this.imageurl);

  _showWarningDialog(BuildContext context) {
    return AlertDialog(
      title: Text('Are you sure?'),
      content: Text('Action cannot be undone'),
      actions: <Widget>[
        FlatButton(
            child: Text('Cancel'),
            color: Theme.of(context).accentColor,
            onPressed: () {
              Navigator.pop(context);
            }),
        FlatButton(
            child: Text('Delete'),
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context, true);
            })
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
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
                child: Text('Delete'),
                onPressed: () =>_showWarningDialog(context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
