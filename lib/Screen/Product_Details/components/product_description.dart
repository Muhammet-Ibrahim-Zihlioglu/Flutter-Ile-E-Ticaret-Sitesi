import 'package:flutter/material.dart';
import 'package:zrhonline/Models/product.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: (20)),
          child: Text(
            widget.product.title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            color: Colors.grey.shade900,
            width: 55,
            height: 55,
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                setState(() {
                  widget.product.isFavourite = !widget.product.isFavourite;
                  Image.asset("assets/ikonlar/kalp.png",
                      color: widget.product.isFavourite
                          ? Colors.white
                          : Colors.red);
                });
              },
              child: Container(
                padding: const EdgeInsets.all((10)),
                height: (50),
                width: (50),
                child: Image.asset(
                  "assets/ikonlar/kalp.png",
                  color: widget.product.isFavourite
                      ? Colors.red
                      : const Color(0xFFDBDEE4),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: (20),
            right: (64),
          ),
          child: Text(
            widget.product.description,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
