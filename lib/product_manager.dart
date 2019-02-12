import 'package:flutter/material.dart';
// Local Imports
import './products.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  // final Function addProduct;
  // final Function deleteProduct;

  ProductManager(this.products);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(child: Products(products))
    ]);
  }
}
