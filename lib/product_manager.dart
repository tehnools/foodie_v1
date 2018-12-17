import 'package:flutter/material.dart';
// Local Imports
import './products.dart';

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
  Widget build(BuildContext context) {
    print('Products Manager Build');
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _products.add('Advanced Food Tester');
              });
              print(_products);
            },
            child: Text('Add Product')),
      ),
      Products(_products)
    ]);
  }

  @override
    void didUpdateWidget(ProductManager oldWidget) {
      print('Products Manager didUpdateWidget');
      // TODO: implement didUpdateWidget
      super.didUpdateWidget(oldWidget);
    }
}
