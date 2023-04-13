import 'package:flutter/material.dart';

import '../../Cart_product/cart.dart';
import '../../Product/product.dart';
import '../../Product/product_card.dart';
import '../Home/components/body.dart';
import 'components/CheckoutCard.dart';
import 'components/cart_card.dart';

class Cart_Screen extends StatelessWidget {
  const Cart_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Scaffold(
          body: ListView(
        children: [
          SafeArea(
              child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 100),
            itemCount: demoCarts.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                  child: Dismissible(
                key: Key(demoCarts[index].product.id.toString()),
                child: CartCard(cart: demoCarts[index]),
              ));
            },
          ))
        ],
      )),
      bottomNavigationBar: const CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
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
