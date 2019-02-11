import 'package:flutter/material.dart';

// Routes

class HomePage extends StatelessWidget {
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
                  Navigator.pushReplacementNamed(context, '/products');
                },
                title: Text('Products'),
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
          title: Text('Foodie'),
        ),
        body: Center(
          child: Text('To be created'),
        ));
  }
}

// ProductManager()
