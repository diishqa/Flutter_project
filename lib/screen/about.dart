import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              color: const Color(0xFFFFE2EB),
              child: Column(
                children: [
                  const Text(
                    '.₊⊹.О магазине.⊹₊.',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFBD4367),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'MeloMir - интернет магазин одежды. Мы продаем вам наши уникальные милые вещички - для самый милых ребят˚˖𓍢ִ໋❀',
                    style: TextStyle(fontSize: 16, color: Color(0xFFBD4367)),
                    textAlign: TextAlign.center,
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
                    '⊹₊˚‧︵‿₊୨ Наша команда ୧₊‿︵‧˚₊⊹',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFBD4367),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildTeamMember(
                        'img/tim.jpg',
                        'Кузьмина Диана',
                        'Пикми-Директор',
                      ),
                      const SizedBox(width: 30),
                      _buildTeamMember(
                        'img/dina.jpg',
                        'Жанатпаева Динара',
                        'Вайпер-Менеджер',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildTeamMember(String imagePath, String name, String role) {
    return Column(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(height: 12),
        Text(
          name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFFBD4367),
          ),
        ),
        Text(
          role,
          style: const TextStyle(color: Color(0xFFBD4367)),
        ),
      ],
    );
  }
}