import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  bool isFavourite, isPopular;
  bool isCart;
  final bool isearphone,
      isforyou,
      islaptop,
      istelephone,
      isplaystation,
      istablet,
      istelevisions,
      iswatch;
  final bool isslaptop, isstelephone, isspecificplayer;
  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isearphone = false,
    this.isforyou = false,
    this.islaptop = false,
    this.isplaystation = false,
    this.istablet = false,
    this.istelephone = false,
    this.istelevisions = false,
    this.iswatch = false,
    this.isslaptop = false,
    this.isstelephone = false,
    this.isspecificplayer = false,
    this.isFavourite = false,
    this.isCart = false,
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
    isCart: true,
    isPopular: true,
    istelephone: true,
    isstelephone: true,
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
      description:
          "-Gps: Var  -Sesli Görüşme: Var  -Kamera: Yok  -Uyku Takibi: Var -Adımsayar: Var -Kalp Ritim Ölçme: Var",
      rating: 4.1,
      isPopular: true,
      iswatch: true),
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
        "-Ssd Kapasitesi: 500GB -Ram: 16GB  İşlemci hızı: 2.7Ghz  -İşlemci: Intel Core İ5 (11.Nesil) -Ekran Kartı: Nvidia Geforce Rtx3050 Ti",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    islaptop: true,
    isspecificplayer: true,
    isslaptop: true,
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
        "-Çift Telefon Desteği: Yok -Bluetooth Version: 5.0  -Suya Dayanıklılık: Var -Aktif Gürültü Önleme(ANC): Yok -Tür: Bluetooth",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    isearphone: true,
    isspecificplayer: true,
  ),
  Product(
      id: 5,
      images: [
        "assets/qcyT13-1.png",
        "assets/qcyT13-2.png",
      ],
      colors: const [
        Colors.white,
        Colors.black,
      ],
      title: "Qcy T-13 Bluetoth Kulaklık",
      price: 376.00,
      description:
          "-Çift Telefon Desteği: Yok -Bluetooth Version: 5.1  -Suya Dayanıklılık: Var -Aktif Gürültü Önleme(ANC): Yok -Garanti: 2 yıl -Tür: Bluetooth",
      rating: 4.5,
      isearphone: true),
  Product(
      id: 6,
      images: [
        "assets/Sonykulaküstü.png",
      ],
      colors: const [
        Colors.black,
      ],
      title: "Sony Kulaklık Kablolu Kulaküstü",
      price: 380.00,
      description:
          "-Çift Telefon Desteği: Yok -Bluetooth Version: Yok  -Suya Dayanıklılık: Yok -Aktif Gürültü Önleme(ANC): Yok -Garanti: 1 yıl -Tür: Kulaküstü",
      rating: 4.7,
      isearphone: true),
  Product(
    id: 7,
    images: ["assets/barbantimobile-1.png", "assets/barbantimobile-2.png"],
    colors: const [
      Colors.black,
    ],
    title: "Barbanti Mobile Powerbanklı Blueetooh Kulaklık ",
    price: 162.15,
    description:
        "-Çift Telefon Desteği: Yok -Bluetooth Version: 5.1  -Suya Dayanıklılık: Var -Aktif Gürültü Önleme(ANC): Var -Garanti: 2 yıl -Tür: Kulakiçi   -Powerbank Gücü: 10000 Mh",
    rating: 5.0,
    isearphone: true,
    isforyou: true,
    isspecificplayer: true,
  ),
  Product(
    id: 8,
    images: ["assets/Xiomi-1.png", "assets/Xiomi-2.png"],
    colors: const [Colors.black, Colors.white],
    title: "Xiaomi Redmi Buds 3",
    price: 388.00,
    description:
        "-Çift Telefon Desteği: Yok -Bluetooth Version: 5.0  -Suya Dayanıklılık: Var -Aktif Gürültü Önleme(ANC): Var -Garanti: 2 yıl -Tür: Kulakiçi",
    rating: 5.0,
    isearphone: true,
  ),
  Product(
    id: 9,
    images: [
      "assets/deilmi-1.png",
      "assets/deilmi-2.png",
    ],
    colors: const [
      Colors.black,
    ],
    title: "Deilmi Kablosuz Kulakiçi Kulaklık",
    price: 122.94,
    description:
        "-Çift Telefon Desteği: Yok -Bluetooth Version: 5.0  -Suya Dayanıklılık: Var -Aktif Gürültü Önleme(ANC): VAr -Garanti: 2 yıl -Tür: Kulakiçi",
    rating: 3.8,
    isearphone: true,
  ),
  Product(
      id: 10,
      images: [
        "assets/matebookd15-1.png",
        "assets/matebookd15-2.png",
        "assets/matebookd15-3.png",
      ],
      colors: const [
        Colors.black,
      ],
      title: "Huawei Matebook D-15",
      price: 11999.00,
      description:
          "-Ssd Kapasitesi: 512GB -Ram: 8GB  İşlemci hızı: 2.4Ghz  -İşlemci:  Amd Ryzen 5  -Ekran Kartı: AMD Radeon R5",
      rating: 4.5,
      islaptop: true,
      isforyou: true,
      isslaptop: true),
  Product(
    id: 11,
    images: [
      "assets/G870-1.png",
      "assets/G870-2.png",
      "assets/G870-3.png",
    ],
    colors: const [
      Colors.black,
    ],
    title: "Casper Excalibur G870",
    price: 24499.00,
    description:
        "-Ssd Kapasitesi: 500GB -Ram: 32GB  İşlemci hızı: 2.4Ghz  -İşlemci:  İntel Core İ5 (11.Nesil)  -Ekran Kartı: Nvidia Geforce Rtx4060",
    rating: 4.8,
    islaptop: true,
    isslaptop: true,
    isspecificplayer: true,
  ),
  Product(
    id: 12,
    images: [
      "assets/tufa15-1.png",
      "assets/tufa15-2.png",
      "assets/tufa15-3.png",
    ],
    colors: const [
      Colors.black,
    ],
    title: "Asus Tuf Gaming A15",
    price: 25599.90,
    description:
        "-Ssd Kapasitesi: 512GB -Ram: 8GB  İşlemci hızı: 2.4Ghz  -İşlemci:  Amd Ryzen 5  -Ekran Kartı: Nvidia Geforce Rtx4050",
    rating: 4.5,
    islaptop: true,
    isslaptop: true,
    isspecificplayer: true,
  ),
  Product(
    id: 13,
    images: [
      "assets/m2-1.png",
      "assets/m2-2.png",
      "assets/m2-3.png",
    ],
    colors: [
      Colors.black,
      const Color.fromARGB(255, 246, 255, 0),
      Colors.grey.shade400,
    ],
    title: "Apple Macbook Air M2",
    price: 25692.00,
    description:
        "-Ssd Kapasitesi: 256GB -Ram: 8GB  İşlemci hızı: 3.3Ghz  -İşlemci:  M2  -Ekran Kartı: M2 8 Çekirdekli",
    rating: 4.7,
    islaptop: true,
    isforyou: true,
    isslaptop: true,
  ),
  Product(
    id: 14,
    images: [
      "assets/c500-1.png",
      "assets/c500-2.png",
      "assets/c500-3.png",
    ],
    colors: [
      Colors.grey.shade400,
    ],
    title: "Casper Nirvana C500",
    price: 10415.00,
    description:
        "-Ssd Kapasitesi: 500GB -Ram: 16GB  İşlemci hızı: 2.5Ghz  -İşlemci:  İntel Core İ5 (11.Nesil)  -Ekran Kartı: Intel Iris Graphics",
    rating: 4.1,
    islaptop: true,
  ),
  Product(
    id: 15,
    images: [
      "assets/ps5-1.png",
      "assets/ps5-2.png",
      "assets/ps5-3.png",
    ],
    colors: [
      Colors.white,
      Colors.black,
    ],
    title: "Sony Playstation 5",
    price: 16429.00,
    description:
        "825GB Hafıza -Dijital Sürüm -Türkçe Menü -2 Adet PS5 DualSense Kol Hediyeli ",
    rating: 4.7,
    isplaystation: true,
    isforyou: true,
    isspecificplayer: true,
  ),
  Product(
    id: 16,
    images: [
      "assets/ps4-1.png",
      "assets/ps4-2.png",
    ],
    colors: [
      Colors.black,
    ],
    title: "Sony Playstation 4",
    price: 8370.00,
    description: "1TB Hafıza -2 Adet PS4 V2 Kol Hediyeli -İthalatçı Garantili",
    rating: 4.7,
    isplaystation: true,
    isspecificplayer: true,
  ),
  Product(
    id: 17,
    images: [
      "assets/ps4kol-1.png",
      "assets/ps4kol-3.png",
      "assets/ps4kol-3.png",
    ],
    colors: [
      Colors.grey.shade900,
      Colors.black,
      Colors.blue.shade900,
    ],
    title: "Playstation 4 Oyun Konsolu",
    price: 490.00,
    description: "-Wireless Bağlantılı -İthalatçı Garantili",
    rating: 4.8,
    isplaystation: true,
  ),
  Product(
    id: 18,
    images: [
      "assets/fifa23.png",
    ],
    colors: [
      Colors.black,
    ],
    title: "Fifa 23",
    price: 999.00,
    description:
        "-Standart Sürüm - Türkçe Menü - Bandrollü Güvenlik Şeritli Ürün -İthalatçı Garantili",
    rating: 4.7,
    isplaystation: true,
    isspecificplayer: true,
  ),
  Product(
    id: 19,
    images: [
      "assets/gta5.png",
    ],
    colors: [
      Colors.black,
    ],
    title: "GTA V",
    price: 643.00,
    description:
        "-Standart Sürüm - Türkçe Menü - Bandrollü Güvenlik Şeritli Ürün -İthalatçı Garantili",
    rating: 4.8,
    isplaystation: true,
    isspecificplayer: true,
  ),
  Product(
    id: 20,
    images: [
      "assets/ps3kol.png",
    ],
    colors: [
      Colors.black,
    ],
    title: "Playstation 3 Oyun Konsolu",
    price: 185.00,
    description: "-Bluetooth Bağlantılı -İthalatçı Garantili -1 Yıl Garantili",
    rating: 4.3,
    isplaystation: true,
  ),
  Product(
    id: 21,
    images: [
      "assets/xiomipad-1.png",
      "assets/xiomipad-2.png",
      "assets/xiomipad-3.png",
    ],
    colors: [
      Colors.black,
      Colors.grey.shade200,
    ],
    title: "Xiaomi Redmi Pad",
    price: 6182.00,
    description: "-6GB Ram -128GB Hafıza -10.6 İnç",
    rating: 4.3,
    istablet: true,
  ),
  Product(
    id: 22,
    images: [
      "assets/appleipad9-1.png",
      "assets/appleipad9-2.png",
      "assets/appleipad9-3.png",
    ],
    colors: [Colors.black, Colors.grey.shade200, Colors.grey.shade900],
    title: "Apple iPad 9. Nesil",
    price: 10998.99,
    description: "-3GB Ram -256GB Hafıza -10.2 İnç -İşlemci Çekirdek Sayısı: 6",
    rating: 5.0,
    istablet: true,
    isforyou: true,
  ),
  Product(
    id: 23,
    images: [
      "assets/taba7-1.png",
      "assets/taba7-2.png",
    ],
    colors: [Colors.grey.shade200, Colors.grey.shade900],
    title: "Samsung Galaxy Tab A7 Lite",
    price: 2332.00,
    description: "-3GB Ram -32GB Hafıza -9.0 İnç -İşlemci Çekirdek Sayısı: 8",
    rating: 4.6,
    istablet: true,
  ),
  Product(
    id: 24,
    images: [
      "assets/hometechalfa-1.png",
    ],
    colors: [Colors.grey.shade200, Colors.grey.shade900],
    title: "Hometech Alfa",
    price: 2950.00,
    description: "-64GB Hafıza -10.0 İnç",
    rating: 4.6,
    istablet: true,
  ),
  Product(
    id: 25,
    images: [
      "assets/lenovatabm10-1.png",
      "assets/lenovatabm10-2.png",
      "assets/lenovatabm10-3.png",
    ],
    colors: [Colors.grey.shade900],
    title: "LENOVO Tab M10 ",
    price: 3749.00,
    description: "-4GB Ram -64GB Hafıza -10.1 İnç ",
    rating: 4.4,
    istablet: true,
  ),
  Product(
      id: 26,
      images: [
        "assets/iphone13-1.png",
        "assets/iphone13-2.png",
        "assets/iphone13-3.png",
        "assets/iphone13-4.png",
      ],
      colors: const [
        Colors.red,
        Colors.white,
        Colors.pink,
        Colors.black,
      ],
      title: "Iphone 13",
      price: 27400.00,
      description:
          "-Dahili Hafıza: 128GB   -Ram: 4GB   -Arka Kamera: 15 MP   -Ön Kamera: 10 MP",
      rating: 4.9,
      istelephone: true,
      isspecificplayer: true,
      isforyou: true),
  Product(
    id: 27,
    images: [
      "assets/iphone11-1.png",
      "assets/iphone11-2.png",
      "assets/iphone11-3.png",
      "assets/iphone11-4.png",
    ],
    colors: const [
      Colors.purple,
      Colors.red,
      Colors.white,
      Colors.black,
    ],
    title: "Iphone 11",
    price: 17999.00,
    description:
        "-Dahili Hafıza: 128GB   -Ram: 4GB   -Arka Kamera: 15 MP   -Ön Kamera: 10 MP",
    rating: 4.9,
    istelephone: true,
    isstelephone: true,
  ),
  Product(
    id: 28,
    images: [
      "assets/oppoa74-1.png",
      "assets/oppoa74-2.png",
      "assets/oppoa74-3.png",
    ],
    colors: [
      Colors.blue.shade900,
      Colors.black,
    ],
    title: "Oppo A74",
    price: 7781.00,
    description:
        "-Dahili Hafıza: 128GB   -Ram: 4+2GB   -Arka Kamera: 48 MP   -Ön Kamera: 15 MP",
    rating: 4.7,
    istelephone: true,
    isstelephone: true,
    isspecificplayer: true,
  ),
  Product(
    id: 29,
    images: [
      "assets/redminote12pro-1.png",
      "assets/redminote12pro-2.png",
      "assets/redminote12pro-3.png",
    ],
    colors: [
      Colors.white,
      Colors.blue.shade400,
      Colors.black,
    ],
    title: "Xiaomi Redmi Note 12 Pro",
    price: 9899.00,
    description:
        "-Dahili Hafıza: 256   -Ram: 8GB   -Arka Kamera: 108 MP   -Ön Kamera: 18 MP",
    rating: 4.9,
    istelephone: true,
    isstelephone: true,
    isspecificplayer: true,
  ),
  Product(
    id: 30,
    images: [
      "assets/redminote11pro-1.png",
      "assets/redminote11pro-2.png",
      "assets/redminote11pro-3.png",
    ],
    colors: [
      Colors.grey.shade500,
      Colors.white,
    ],
    title: "Xiaomi Redmi Note 11 Pro",
    price: 9099.00,
    description:
        "-Dahili Hafıza: 128   -Ram: 8GB   -Arka Kamera: 108 MP   -Ön Kamera: 18 MP",
    rating: 4.8,
    istelephone: true,
    isstelephone: true,
    isspecificplayer: true,
  ),
  Product(
    id: 31,
    images: [
      "assets/axentv-1.png",
      "assets/axentv-2.png",
    ],
    colors: [
      Colors.black,
    ],
    title: "Axen Tv",
    price: 2699.00,
    description:
        "-24 İnç/61 Ekran -Dahili Uydu Alıcılı -Smart TV var -Led Ekran",
    rating: 4.7,
    istelevisions: true,
  ),
  Product(
    id: 32,
    images: [
      "assets/telenova-1.png",
      "assets/telenova-2.png",
    ],
    colors: [
      Colors.black,
    ],
    title: "Telenova Revo Tv",
    price: 7999.00,
    description:
        "-58 İnç/147 Ekran -Dahili Uydu Alıcılı -Smart TV var -4K Ultra HD Ekran",
    rating: 4.5,
    istelevisions: true,
  ),
  Product(
    id: 33,
    images: [
      "assets/vesteltv-1.png",
      "assets/vesteltv-2.png",
      "assets/vesteltv-3.png",
    ],
    colors: [
      Colors.black,
    ],
    title: "Vestel Tv",
    price: 6219.00,
    description:
        "-43 İnç/108 Ekran -Dahili Uydu Alıcılı -Smart TV var -Full HD Ekran",
    rating: 4.4,
    istelevisions: true,
  ),
  Product(
    id: 34,
    images: [
      "assets/sony1tv-1.png",
      "assets/sony1tv-2.png",
    ],
    colors: [
      Colors.black,
    ],
    title: "Sony Tv 139 Ekran",
    price: 31499.00,
    description:
        "-55 İnç/139 Ekran -Dahili Uydu Alıcılı -Smart TV var -4K Ultra HD Ekran",
    rating: 4.9,
    istelevisions: true,
  ),
  Product(
    id: 35,
    images: [
      "assets/sony2tv-1.png",
      "assets/sony2tv-2.png",
    ],
    colors: [
      Colors.black,
    ],
    title: "Sony Tv 210 Ekran",
    price: 31499.00,
    description:
        "-83 İnç/210 Ekran -Dahili Uydu Alıcılı -Smart TV var -4K Ultra HD Ekran",
    rating: 5.0,
    isforyou: true,
    istelevisions: true,
    isspecificplayer: true,
  ),
  Product(
      id: 36,
      images: [
        "assets/patekphilippe-1.png",
        "assets/patekphilippe-2.png",
        "assets/patekphilippe-3.png",
      ],
      colors: [Colors.brown.shade700],
      title: "Patek Philippe Chronograph ",
      price: 2499000.00,
      description: "18k Altın Erkek Kol Saati",
      rating: 5.00,
      isforyou: true,
      iswatch: true),
  Product(
      id: 37,
      images: [
        "assets/korloff.png",
      ],
      colors: [Colors.grey.shade300],
      title: "Korloff",
      price: 208224.00,
      description: "Kadın Kol Saati",
      rating: 5.00,
      iswatch: true),
  Product(
    id: 38,
    images: [
      "assets/huaweigt3-1.png",
      "assets/huaweigt3-2.png",
      "assets/huaweigt3-3.png",
    ],
    colors: const [
      Colors.black,
      Colors.grey,
      Colors.white,
    ],
    title: "Huawei Watch Gt3",
    price: 5498.00,
    description:
        "-Gps: Var  -Sesli Görüşme: Var  -Kamera: Yok  -Uyku Takibi: Var -Adımsayar: Var -Kalp Ritim Ölçme: Var",
    rating: 4.5,
    iswatch: true,
    isspecificplayer: true,
  ),
  Product(
    id: 39,
    images: [
      "assets/applewatch8-1.png",
      "assets/applewatch8-2.png",
      "assets/applewatch8-3.png",
      "assets/applewatch8-4.png",
    ],
    colors: [
      Colors.brown.shade100,
      Colors.black45,
      Colors.red.shade800,
      Colors.grey.shade300,
    ],
    title: "Apple Watch Series 8",
    price: 8988.00,
    description: "-İşletim Tipi: Ios  -Metalik Kasa",
    rating: 4.90,
    iswatch: true,
    isspecificplayer: true,
  ),
];
