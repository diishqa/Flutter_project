import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});
  Widget buildMember(
    String imagePath,
    String name,
    String role,
  ) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              imagePath,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFFBD4367),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            role,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFFBD4367),
            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('О нас'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Column(
                  children: [
                    Text(
                      '.₊⊹.О магазине.⊹₊.',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFBD4367),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'MeloMir - интернет магазин одежды. Мы продаем вам наши уникальные милые вещички - для самых милых ребят˚˖𓍢ִ໋❀',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFFBD4367),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                '⊹₊˚‧︵‿₊୨ Наша команда ୧₊‿︵‧˚₊⊹',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFBD4367),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Expanded(
                    child: buildMember(
                      'assets/images/tim.jpg',
                      'Кузьмина Диана',
                      'Пикми-Директор',
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: buildMember(
                      'assets/images/dina.jpg',
                      'Жанатпаева Динара',
                      'Вайпер-Менеджер',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}