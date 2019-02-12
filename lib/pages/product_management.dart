import 'package:flutter/material.dart';

// Routes
// import '../product_manager.dart';
import './inventory.dart';
import './shopping_list.dart';

class ProductManagmentPage extends StatelessWidget {
  final Function addProduct;
  final Function deleteProduct;

  ProductManagmentPage(this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                  Navigator.pushReplacementNamed(context, '/products');
                },
                title: Text('Products'),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Product Manager'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Shopping List', icon: Icon(Icons.list)),
              Tab(text: 'Inventory', icon: Icon(Icons.receipt)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[ShoppingListPage(addProduct), InventoryPage()],
        ),
      ),
    );
  }
}
