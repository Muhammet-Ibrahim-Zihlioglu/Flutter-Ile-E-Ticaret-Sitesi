import 'package:flutter/material.dart';
import 'package:zrhonline/Component/bottombar.dart';
import '../../Product/product.dart';
import '../../Product/product_card.dart';
import 'components/CheckoutCard.dart';

class Cart_Screen extends StatelessWidget {
  const Cart_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Scaffold(
          body: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                ...List.generate(
                  demoProducts.length,
                  (index) {
                    if (demoProducts[index].isCart) {
                      return ProductCard(product: demoProducts[index]);
                    }

                    return const SizedBox(
                      width: 0,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: const CheckoutCard(),
      )),
      bottomNavigationBar: const BottomBar(selectedMenu: MenuState.cart),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Column(
        children: const [
          Text(
            "Sepetim",
            style: TextStyle(color: Color.fromARGB(255, 0, 21, 255)),
          ),
        ],
      ),
    );
  }
}
