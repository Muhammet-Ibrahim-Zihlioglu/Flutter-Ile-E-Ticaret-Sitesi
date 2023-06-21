import 'package:flutter/material.dart';
import 'package:zrhonline/Models/product.dart';
import 'package:zrhonline/Screen/Product_Details/details.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  final Product product;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: (20)),
      child: SizedBox(
        width: widget.width,
        child: GestureDetector(
          onLongPress: () => Navigator.pushNamed(
            context,
            "/details",
            arguments: ProductDetailsArguments(product: widget.product),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 0.5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: widget.product.id.toString(),
                    child: Image.asset(widget.product.images[0]),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                widget.product.title,
                style: const TextStyle(color: Colors.black),
                maxLines: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${widget.product.price} TRY",
                    style: const TextStyle(
                      fontSize: (16),
                      fontWeight: FontWeight.w600,
                      color: Colors.purple,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(40),
                    onDoubleTap: () {
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
