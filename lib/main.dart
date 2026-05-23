import 'package:flutter/material.dart';
import 'screen/home.dart';
import 'screen/catalog.dart';
import 'screen/about.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MeloMir',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFBD4367),
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/catalog': (context) => const CatalogScreen(),
        '/about': (context) => const AboutScreen(),
      },
    );
  }
}
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MeloMir',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFFEBADC1),
        centerTitle: true,
        actions: [
          TextButton.icon(
            onPressed: () => Navigator.pushNamed(context, '/catalog'),
            icon: const Icon(Icons.shopping_bag, color: Colors.white),
            label: const Text(
              'Каталог',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton.icon(
            onPressed: () => Navigator.pushNamed(context, '/about'),
            icon: const Icon(Icons.info, color: Colors.white),
            label: const Text(
              'О нас',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: const HomeScreen(),
    );
  }
}