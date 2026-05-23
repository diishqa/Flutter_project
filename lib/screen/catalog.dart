import 'package:flutter/material.dart';
import '../data/products_data.dart';
import '../widgets/product_card.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Каталог товаров'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: allProducts.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 0.78,
        ),
        itemBuilder: (context, index) {
          return ProductCard(
            product: allProducts[index],
          );
        },
      ),
    );
  }
}