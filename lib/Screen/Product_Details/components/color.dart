import 'package:flutter/material.dart';
import 'package:zrhonline/Component/rounded%C4%B1conbtn.dart';
import 'package:zrhonline/Models/product.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ColorDots createState() => _ColorDots();
}

class _ColorDots extends State<ColorDots> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                widget.product.colors.length,
                (index) => buildSmallProductPreview(
                    index, widget.product.colors[index])),
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallProductPreview(int index, Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.all(8),
        height: (48),
        width: (48),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
              color: Colors.black.withOpacity(selectedImage == index ? 1 : 0)),
        ),
      ),
    );
  }
}
