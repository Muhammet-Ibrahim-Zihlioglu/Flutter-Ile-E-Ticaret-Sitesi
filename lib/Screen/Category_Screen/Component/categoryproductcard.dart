import 'package:flutter/material.dart';
import 'package:zrhonline/Product/product.dart';
import 'package:zrhonline/Screen/Product_Details/details.dart';

class CategoryProductCard extends StatefulWidget {
  const CategoryProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  State<CategoryProductCard> createState() => _CategoryProductCardState();
}

class _CategoryProductCardState extends State<CategoryProductCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 575,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(
          context,
          "/details",
          arguments: ProductDetailsArguments(product: widget.product),
        ),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 3,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: widget.product.id.toString(),
                      child: Container(
                        width: 150,
                        height: 500,
                        child: Image.asset(widget.product.images[0],
                            fit: BoxFit.fill),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30),
                        Text(
                          widget.product.title,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                        ),
                        Container(
                          width: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "${widget.product.price} TRY",
                                style: const TextStyle(
                                  fontSize: (25),
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple,
                                ),
                              ),
                              InkWell(
                                borderRadius: BorderRadius.circular(40),
                                onTap: () {
                                  setState(() {
                                    widget.product.isFavourite =
                                        !widget.product.isFavourite;
                                    Image.asset("assets/ikonlar/kalp.png",
                                        color: widget.product.isFavourite
                                            ? const Color(0xFFDBDEE4)
                                            : Colors.red);
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.all((6)),
                                  height: (28),
                                  width: (28),
                                  child: Image.asset(
                                    "assets/ikonlar/kalp.png",
                                    color: widget.product.isFavourite
                                        ? Colors.red
                                        : const Color(0xFFDBDEE4),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
