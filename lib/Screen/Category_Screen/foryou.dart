import 'package:flutter/material.dart';
import 'package:zrhonline/Product/product.dart';
import 'package:zrhonline/Product/product_card.dart';
import 'package:zrhonline/Screen/Category_Screen/Component/categoryproductcard.dart';

class ForYou extends StatelessWidget {
  const ForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'Zırhloğlu Online',
          style: TextStyle(color: Color.fromARGB(234, 6, 0, 183), fontSize: 25),
        ),
      ),
      body: Scaffold(
          body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: SingleChildScrollView(
              child: SafeArea(
                  child: Column(
                children: [
                  ...List.generate(
                    demoProducts.length,
                    (index) {
                      if (demoProducts[index].isforyou) {
                        return CategoryProductCard(
                            product: demoProducts[index]);
                      }

                      return const SizedBox(
                        width: 0,
                      );
                    },
                  ),
                ],
              )),
            ),
          )
        ],
      )),
    );
  }
}
