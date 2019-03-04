import 'package:flutter/material.dart';

class ShoppingListPage extends StatefulWidget {
  final Function addProduct;

  ShoppingListPage(this.addProduct);

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
    return Container(
      margin: EdgeInsets.all(15.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'Product Title',
            ),
            onChanged: (String value) {
              setState(() {
                title = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Product Description',
            ),
            onChanged: (String value) {
              setState(() {
                description = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Product Price',
            ),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                price = double.parse(value);
              });
            },
          ),
          RaisedButton(
            child: Text('Save'),
            // color: Colors.teal[200],
            // textColor: Colors.white,
            onPressed: () {
              final Map<String, dynamic> product = {
                'title': title,
                'description': description,
                'price': price,
                'image': 'assets/food.jpg'
              };
              widget.addProduct(product);
              Navigator.pushReplacementNamed(context, '/products');
            },
          )
        ],
      ),
    );
  }
}
