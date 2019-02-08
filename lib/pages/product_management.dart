import 'package:flutter/material.dart';
import '../product_manager.dart';
import './home.dart';



class ProductManagmentPage extends StatelessWidget {

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
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              HomePage()));
                },
                title: Text('Home'),
              ),
            ],
          ),
        ),
      appBar: AppBar(
        title: Text('Product Manager'),
      ),
      body: ProductManager(),
    );
  }
}
