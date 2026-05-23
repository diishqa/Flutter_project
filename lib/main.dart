import 'package:flutter/material.dart';
import 'screen/home.dart';
import 'screen/catalog.dart';
import 'screen/about.dart';

void main() {
  runApp(const MeloMirApp());
}
class MeloMirApp extends StatelessWidget {
  const MeloMirApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MeloMir',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFE2EB),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFBD4367),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFEBADC1),
          centerTitle: true,
          foregroundColor: Colors.white,
        ),
      ),
      home: const MainScreen(),
    );
  }
}
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  late final List<Widget> screens;
  @override
  void initState() {
    super.initState();
    screens = [
      HomeScreen(
        onCatalogPressed: () {
          setState(() {
            selectedIndex = 1;
          });
        },
      ),
      const CatalogScreen(),
      const AboutScreen(),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: const Color(0xFFEBADC1),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Каталог',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'О нас',
          ),
        ],
      ),
    );
  }
}