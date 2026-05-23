import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(40),
              decoration: const BoxDecoration(
                color: Color(0xFFFFD6E2),
              ),
              child: Column(
                children: [
                  const Text(
                    'Добро пожаловать в MeloMir ૮ ྀིᴗ͈ . ᴗ͈ ྀིა',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFBD4367),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Лучшие мили-товары для самых мили-ребят ૮ ․ ․ ྀིა',
                    style: TextStyle(fontSize: 18, color: Color(0xFFBD4367)),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    '°❀⋆.ೃ࿔*:･°❀⋆.ೃ࿔*:･⏔⏔⏔ ꒰ ᧔ෆ᧓ ꒱ ⏔⏔⏔°❀⋆.ೃ࿔*:･°❀⋆.ೃ࿔*:･',
                    style: TextStyle(color: Color(0xFFBD4367)),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/catalog');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFBD4367),
                      foregroundColor: const Color(0xFFFDE1E9),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: const Text('⋆｡˚✴︎⋆Перейти в каталог ⋆✴︎˚｡⋆'),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              color: const Color(0xFFFFE2EB),
              child: Column(
                children: [
                  const Text(
                    'Популярные мили-товары -`♡´-',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFBD4367),
                    ),
                  ),
                  const SizedBox(height: 20),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.7,
                    ),
                    itemCount: popularProducts.length,
                    itemBuilder: (context, index) {
                      return ProductCard(product: popularProducts[index]);
                    },
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              color: const Color(0xFFFFE2EB),
              child: Column(
                children: [
                  const Text(
                    '⋆. 𐙚˚࿔ Наши преимущества 𝜗𝜚˚⋆',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFBD4367),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 20,
                    runSpacing: 10,
                    children: const [
                      Text('♡ Качественные материалы'),
                      Text('♡ Уникальные дизайны'),
                      Text('♡ Милый стиль'),
                      Text('♡ Хорошие подарки'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}