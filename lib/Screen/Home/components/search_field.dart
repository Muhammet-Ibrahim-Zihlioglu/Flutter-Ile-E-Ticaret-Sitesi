import 'package:flutter/material.dart';
import 'package:zrhonline/Product/product.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onSubmitted: (value) => demoProducts,
        onChanged: (value) => print(value),
        decoration: const InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: (9), vertical: (9)),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search product",
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}
