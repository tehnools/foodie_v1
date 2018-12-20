import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget{
  final Function addProduct;

  ProductControl(this.addProduct);

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return RaisedButton(
            onPressed: () {
              addProduct('Test Product');
            },
            child: Text('Add Product'));
    }

}