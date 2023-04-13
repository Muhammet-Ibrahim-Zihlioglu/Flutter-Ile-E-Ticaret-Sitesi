import 'package:flutter/material.dart';
import 'package:zrhonline/Screen/Home/components/categories.dart';

import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: const [
           
             SizedBox(height: 10),
             HomeHeader(),
             SizedBox(height: 10),
             DiscountBanner(),
             Categories(),
             SizedBox(height: 10,),
             SpecialOffers(),
             SizedBox(height: 10),
             PopularProducts(),
             SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
