import 'package:flutter/material.dart';
// Local Imports
import './products.dart';
import 'product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = 'Loli Tester'}){
    print('Products Manager Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('Products Manager create state()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print('Products Manager initState');
    super.initState();
    _products.add(widget.startingProduct);
  }


  @override
    void didUpdateWidget(ProductManager oldWidget) {
      print('Products Manager didUpdateWidget');
      super.didUpdateWidget(oldWidget);
    }

    void _addProduct(String productName){
      setState(() {
                _products.add(productName);
              });
    }

  @override
  Widget build(BuildContext context) {
    print('Products Manager Build');
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10),
        child: ProductControl(_addProduct),
      ),
      Products(_products)
    ]);
  }
}
