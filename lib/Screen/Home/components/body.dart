import 'package:flutter/material.dart';
import 'package:zrhonline/Screen/Home/components/categories.dart';

import 'discount_banner.dart';
import 'popular_product.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'NOT',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color.fromARGB(255, 4, 0, 255),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '-Favorilere eklemek için beğeni butununa  uzun basılmalı. \n-Ürün detayına erişmek için kutuya çif tıklanmalı.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 4, 0, 255),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 5),
            const DiscountBanner(),
            const Categories(),
            const SizedBox(
              height: 10,
            ),
            const SpecialOffers(),
            const SizedBox(height: 10),
            const PopularProducts(),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
