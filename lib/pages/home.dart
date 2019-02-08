import 'package:flutter/material.dart';

// Routes
import './product_management.dart';

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
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ProductManagmentPage()));
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
