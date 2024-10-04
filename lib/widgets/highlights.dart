import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_tile.dart';

class Highlights extends StatelessWidget {
  final List<Product> highlights = [
    Product(name: 'Product 1', price: 999.99, image: 'assets/watch.jpg'),
    Product(name: 'Product 2', price: 199.99, image: 'assets/mouse.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Highlights',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
            ),
            itemCount: highlights.length,
            itemBuilder: (context, index) {
              return ProductTile(product: highlights[index]);
            },
          ),
        ],
      ),
    );
  }
}
