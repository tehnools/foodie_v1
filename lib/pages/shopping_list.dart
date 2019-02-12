import 'package:flutter/material.dart';

class ShoppingListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShoppingListPageState();
  }
}

class _ShoppingListPageState extends State<ShoppingListPage> {
  String title = '';
  String description = '';
  double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          onChanged: (String value) {
            setState(() {
              title = value;
            });
          },
        ),
        TextField(
          maxLines: 4,
          onChanged: (String value) {
            setState(() {
              description = value;
            });
          },
        ),
        TextField(
          keyboardType: TextInputType.number,
          onChanged: (String value) {
            setState(() {
              price = double.parse(value);
            });
          },
        ),
        Text(title),
      ],
    );
  }
}
