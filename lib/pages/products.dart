import 'package:flutter/material.dart';
import '../product_manager.dart';
// Routes

class ProductsPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  ProductsPage(this.products);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                title: Text('Home'),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/product_managment');
                },
                title: Text('Manage Products'),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Products'),
        ),
        body: Center(
          child: ProductManager(products),
        ));
  }
}
