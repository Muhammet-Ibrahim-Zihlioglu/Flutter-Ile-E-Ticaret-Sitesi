import 'package:flutter/material.dart';
import 'package:zrhonline/Product/product.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback? pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: (20)),
          child: Text(
            product.title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: const EdgeInsets.all((15)),
            width: (64),
            decoration: BoxDecoration(
              color: product.isFavourite
                  ? const Color(0xFFFFE6E6)
                  : const Color(0xFFF5F6F9),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Image.asset(
              "assets/ikonlar/kalp.png",
              color: product.isFavourite
                  ? const Color(0xFFFF4848)
                  : const Color(0xFFDBDEE4),
              height: (16),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: (20),
            right: (64),
          ),
          child: Text(
            product.description,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
