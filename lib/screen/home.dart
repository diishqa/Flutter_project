import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            decoration: const BoxDecoration(
              color: Color(0xFFFFD6E2),
            ),
            child: Column(
              children: [
                const Text(
                  'Добро пожаловать в MeloMir ૮ ྀིᴗ͈ . ᴗ͈ ྀིა',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFBD4367),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Лучшие мили-товары для самых мили-ребят ૮ ․ ․ ྀིა',
                  style: TextStyle(fontSize: 16, color: Color(0xFFBD4367)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                const Text(
                  '°❀⋆.ೃ࿔*:･°❀⋆.ೃ࿔*:･⏔⏔⏔ ꒰ ᧔ෆ᧓ ꒱ ⏔⏔⏔°❀⋆.ೃ࿔*:･°❀⋆.ೃ࿔*:･',
                  style: TextStyle(fontSize: 12, color: Color(0xFFBD4367)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
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
          Container(
            padding: const EdgeInsets.all(30),
            color: const Color(0xFFFFE2EB),
            child: Column(
              children: [
                const Text(
                  'Популярные мили-товары -`♡´-',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFBD4367),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ProductCard(product: popularProducts[0]),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ProductCard(product: popularProducts[1]),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ProductCard(product: popularProducts[2]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            color: const Color(0xFFFFE2EB),
            child: Column(
              children: [
                const Text(
                  '⋆. 𐙚˚࿔ Наши преимущества 𝜗𝜚˚⋆',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFBD4367),
                  ),
                ),
                const SizedBox(height: 20),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 25,
                  runSpacing: 15,
                  children: const [
                    Text('♡ Качественные материалы', style: TextStyle(fontSize: 16)),
                    Text('♡ Уникальные дизайны', style: TextStyle(fontSize: 16)),
                    Text('♡ Милый стиль', style: TextStyle(fontSize: 16)),
                    Text('♡ Хорошие подарки', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
