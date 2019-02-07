import 'package:flutter/material.dart';
// Local Imports
import './products.dart';
import 'product_control.dart';

class ProductManager extends StatefulWidget {
  final Map<String, String> startingProduct;

  ProductManager({this.startingProduct}) {
    print('Products Manager Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('Products Manager create state()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<Map<String, String>> _products = [];

  @override
  void initState() {
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10),
        child: ProductControl(_addProduct),
      ),
      Expanded(child: Products(_products))
    ]);
  }
}
