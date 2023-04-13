import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/iphone14prosiyah.png",
      "assets/iphone14progri.png",
      "assets/iphone14progold.png",
      "assets/iphone14probeyaz.png",
    ],
    colors: const [
      Colors.black,
      Color.fromARGB(65, 158, 158, 158),
      Color.fromARGB(133, 255, 235, 59),
      Colors.white,
    ],
    title: "Iphone 14 pro",
    price: 41999.00,
    description:
        "-Dahili Hafıza: 256GB   -Ram: 6GB   -Arka Kamera: 20 MP   -Ön Kamera: 40 MP",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/huaweisaatsiyah.png",
      "assets/huaweisaatsiyah1.png",
      "assets/huaweisaatsiyah2.png",
      "assets/huaweisaatkhverengi.png",
      "assets/huaweisaatkhverengi1.png",
      "assets/huaweisaatkhverengi2.png",
    ],
    colors: const [
      Colors.black,
      Color.fromARGB(255, 171, 69, 32),
    ],
    title: "Huawei Watch Gt2",
    price: 4199.00,
    description: huaweisaat,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/Monsternotebook.png",
      "assets/Monsternotebook1.png",
      "assets/Monsternotebook2.png",
      "assets/Monsternotebook3.png",
    ],
    colors: const [
      Colors.black,
    ],
    title: "Monster Notebook Abra A5 V17.2.3 ",
    price: 17999.00,
    description:
        "-Ssd Kapasitesi: 500GB  -Ram: 16GB  İşlemci hızı: 2.7Ghz  -İşlemci: Intel Core İ5 (11.Nesil) -Ekran Kartı: Nvidia Geforce Rtx3050 Ti",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/airpod3nesil.png",
      "assets/airpod3nesil1.png",
      "assets/airpod3nesil2.png",
    ],
    colors: const [
      Colors.white,
      Colors.black,
    ],
    title: "Airpod 3.Nesil Kablosuz Kulaklık",
    price: 3999.00,
    description:
        "-Çift Telefon Desteği: Yok -Bluetooth Version: 5.0  -Suya Dayanıklılık: Var -Aktif Gürültü Önleme(ANC): Yok",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
];

String huaweisaat =
    "-Gps: Var  -Sesli Görüşme: Var  -Kamera: Yok  -Uyku Takibi: Var -Adımsayar: Var -Kalp Ritim Ölçme: Var";
