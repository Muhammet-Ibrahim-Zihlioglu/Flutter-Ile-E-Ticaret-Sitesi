import 'package:flutter/material.dart';



class SpecialOffers extends StatelessWidget {
  const SpecialOffers({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding:  EdgeInsets.only(left: (20)),
              child: Text(
                'Sizin İçin Seçtiklerimiz',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        
        
        const SizedBox(height: (20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/arkaplan1.png",
                category: "Bilgisayar",
                numOfBrands: 18,
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/arkaplan2.png",
                category: "Telefon",
                numOfBrands: 24,
                press: () {},
              ),
             const SizedBox(width: (20)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: (20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: (242),
          height: (100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
               
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration:const  BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white10,
                        Colors.white12,
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: (15.0),
                    vertical: (10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: const TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: const TextStyle(
                            fontSize: (18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands Brands")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
