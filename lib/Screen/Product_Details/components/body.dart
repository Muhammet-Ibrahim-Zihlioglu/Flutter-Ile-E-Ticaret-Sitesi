import 'package:flutter/material.dart';
import 'package:zrhonline/Component/defaultbutton.dart';
import 'package:zrhonline/Component/detailsbutton.dart';
import 'package:zrhonline/Product/product.dart';
import 'package:zrhonline/Screen/Cart/Cart_Screen.dart';
import 'package:zrhonline/Screen/Product_Details/components/color.dart';
import 'package:zrhonline/Screen/Product_Details/components/top_ronded_container.dart';
import 'product_description.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: const Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                            bottom: (40),
                            top: (15),
                          ),
                          child: DetailsButton(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Cart_Screen())))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
