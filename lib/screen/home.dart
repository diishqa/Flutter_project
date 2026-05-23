import 'package:flutter/material.dart';
import '../data/products_data.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback onCatalogPressed;
  const HomeScreen({
    super.key,
    required this.onCatalogPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: onCatalogPressed,
              child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 60,
                horizontal: 20,
              ),
              decoration: const BoxDecoration(
                color: Color(0xFFFFD6E2),
              ),
              child: Column(
                children: [
                  const Text(
                    'Добро пожаловать в MeloMir ♡',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFBD4367),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Лучшие мили-товары для самых мили-ребят ♡♡♡',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFBD4367),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    '♡ ♡ ♡ ♡ ♡ ♡ ♡ ♡ ♡ ♡ ♡ ♡ ♡ ♡ ♡',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFBD4367),
                    ),
                  ),
                  const SizedBox(height: 25),
                  GestureDetector(
                    onTap: () {
                      DefaultTabController.of(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFBD4367),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        '♡ Перейти в каталог ♡',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              )
            ),
            const SizedBox(height: 30),
            const Text(
              'Популярные мили-товары ♡',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFBD4367),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 280,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: popularProducts.map((product) {
                  return SizedBox(
                    width: 190,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ProductCard(
                        product: product,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              color: const Color(0xFFFFD6E2),
              child: const Column(
                children: [
                  Text(
                    '♡ Наши преимущества ♡',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFBD4367),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '♡ Качественные материалы',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFBD4367),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '♡ Уникальные дизайны',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFBD4367),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '♡ Милый стиль',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFBD4367),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '♡ Хорошие подарки',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFBD4367),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}