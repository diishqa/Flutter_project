class Product {
  final String name;
  final String imagePath;
  final String description;
  final double price;

  const Product({
    required this.name,
    required this.imagePath,
    required this.description,
    required this.price,
  });
}

const List<Product> products = [
  Product(
    name: 'Майка',
    imagePath: 'assets/images/products/maika.jpg',
    description: 'Милый дизайн для повседневной носки',
    price: 1290,
  ),
  Product(
    name: 'Джинсы',
    imagePath: 'assets/images/products/jeans.jpg',
    description: 'Удобные и стильные джинсы',
    price: 2490,
  ),
  Product(
    name: 'Сумка',
    imagePath: 'assets/images/products/bag.jpg',
    description: 'Стильная сумка для покупок',
    price: 1890,
  ),
  Product(
    name: 'Кофтачка',
    imagePath: 'assets/images/products/kofta2.jpg',
    description: 'Тёплая и уютная кофта',
    price: 1990,
  ),
  Product(
    name: 'Кроссовки',
    imagePath: 'assets/images/products/kros.jpg',
    description: 'Спортивные кроссовки',
    price: 3990,
  ),
  Product(
    name: 'Туфли',
    imagePath: 'assets/images/products/shoes.jpg',
    description: 'Элегантные туфли',
    price: 3490,
  ),
  Product(
    name: 'Юбка',
    imagePath: 'assets/images/products/skirt.jpg',
    description: 'Модная юбка',
    price: 1590,
  ),
  Product(
    name: 'Спортивные штаны',
    imagePath: 'assets/images/products/treniki.jpg',
    description: 'Комфортные штаны для спорта',
    price: 1790,
  ),
];
const List<Product> popularProducts = [
  Product(
    name: 'Курточка',
    imagePath: 'assets/images/products/kurtka.jpg',
    description: 'Стильная куртка для весны',
    price: 4590,
  ),
  Product(
    name: 'Милая рубшка',
    imagePath: 'assets/images/products/kofta.jpg',
    description: 'Оригинальная рубашка',
    price: 1690,
  ),
  Product(
    name: 'Свитер',
    imagePath: 'assets/images/products/switer.jpg',
    description: 'Тёплый свитер',
    price: 2290,
  ),
];