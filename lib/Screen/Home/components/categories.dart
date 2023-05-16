import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryCard(
              icon: "assets/ikonlar/önerilenler.png",
              text: "Sizin İçin Seçtik",
              press: () {
                Navigator.pushNamed(context, '/foryou');
              },
            ),
            const SizedBox(width: 15),
            CategoryCard(
              icon: "assets/ikonlar/telefon.png",
              text: "Telefon",
              press: () {
                Navigator.pushNamed(context, '/telephone');
              },
            ),
            const SizedBox(width: 15),
            CategoryCard(
              icon: "assets/ikonlar/laptop.png",
              text: "Laptop",
              press: () {
                Navigator.pushNamed(context, '/laptop');
              },
            ),
            const SizedBox(width: 15),
            CategoryCard(
              icon: "assets/ikonlar/watch.png",
              text: "Saat",
              press: () {
                Navigator.pushNamed(context, '/watch');
              },
            ),
            const SizedBox(width: 15),
            CategoryCard(
              icon: "assets/ikonlar/kulaklık.png",
              text: "Kulaklık",
              press: () {
                Navigator.pushNamed(context, '/earphone');
              },
            ),
            const SizedBox(width: 15),
            CategoryCard(
              icon: "assets/ikonlar/tablet.png",
              text: "Tablet",
              press: () {
                Navigator.pushNamed(context, '/tablet');
              },
            ),
            const SizedBox(width: 15),
            CategoryCard(
              icon: "assets/ikonlar/tablet.png",
              text: "Televizyon",
              press: () {
                Navigator.pushNamed(context, '/television');
              },
            ),
            const SizedBox(width: 15),
            CategoryCard(
              icon: "assets/ikonlar/playstation.png",
              text: "Playstation",
              press: () {
                Navigator.pushNamed(context, '/playstation');
              },
            ),
            const SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: (55),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all((2)),
              height: (55),
              width: (55),
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade400,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(icon!, fit: BoxFit.fill),
            ),
            const SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
