import 'package:flutter/material.dart';
import 'package:zrhonline/Product/product.dart';
import '../../../Component/defaultbutton.dart';

class CheckoutCard extends StatefulWidget {
  const CheckoutCard({
    Key? key,
  }) : super(key: key);

  @override
  State<CheckoutCard> createState() => _CheckoutCardState();
}

class _CheckoutCardState extends State<CheckoutCard> {
  @override
  Widget build(BuildContext context) {
    double toplam = 0;
    setState(() {
      for (int i = 0; i < demoProducts.length; i++) {
        if (demoProducts[i].isCart == true) {
          toplam += demoProducts[i].price;
        }
      }
    });

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: (15),
        horizontal: (30),
      ),
      height: 120,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    children: [
                      TextSpan(
                        text: " $toplam /TRY",
                        style:
                            const TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: (140),
                  child: DefaultButton(
                    text: "Check Out",
                    press: () => Navigator.pushNamed(context, '/order'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
