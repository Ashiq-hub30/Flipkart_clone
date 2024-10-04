import 'package:flutter/material.dart';
import '../providers/cart_provider.dart';
import 'package:provider/provider.dart';
import '../widgets/product_tile.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Your Cart')),
      body: cart.items.isEmpty
          ? Center(child: Text('No items in cart'))
          : ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                return ProductTile(product: cart.items[index]);
              },
            ),
    );
  }
}
