import 'package:flutter/material.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/ikonlar/sepet.png",
            press: () => Navigator.pushNamed(context, "/cart"),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/ikonlar/zil.png",
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
