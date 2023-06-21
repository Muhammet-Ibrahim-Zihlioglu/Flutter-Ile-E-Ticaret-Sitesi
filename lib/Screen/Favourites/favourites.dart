import 'package:flutter/material.dart';
import 'package:zrhonline/Component/bottombar.dart';
import 'package:zrhonline/Models/product.dart';
import 'package:zrhonline/Models/product_card.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: const Text(
          'Zırhloğlu Online',
          style: TextStyle(color: Color.fromARGB(234, 6, 0, 183), fontSize: 25),
        ),
      ),
      body: Scaffold(
          body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: SafeArea(
                child: Column(
              children: [
                ...List.generate(
                  demoProducts.length,
                  (index) {
                    if (demoProducts[index].isFavourite) {
                      return ProductCard(product: demoProducts[index]);
                    }

                    return const SizedBox(
                      width: 0,
                    );
                  },
                ),
              ],
            )),
          )
        ],
      )),
      bottomNavigationBar: const BottomBar(selectedMenu: MenuState.favourites),
    );
  }
}
