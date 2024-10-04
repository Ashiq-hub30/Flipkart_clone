import 'package:flutter/material.dart';
import '../models/product.dart';
import '../providers/cart_provider.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        children: [
          Image.asset(product.image), // Use asset or network image
          Text(product.name, style: TextStyle(fontSize: 24)),
          Text('\$${product.price}', style: TextStyle(fontSize: 20)),
          ElevatedButton(
            onPressed: () {
              cart.addProduct(product);
              Navigator.pop(context);
            },
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
