import 'package:flutter/material.dart';
import 'package:zrhonline/Models/product.dart';
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
    double indirim = 0;
    setState(() {
      for (int i = 0; i < demoProducts.length; i++) {
        if (demoProducts[i].isCart == true) {
          toplam += demoProducts[i].price;
          indirim = toplam * 80 / 100;
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
                Column(
                  children: [
                    Text.rich(
                      TextSpan(
                        text: "Total:\n",
                        children: [
                          TextSpan(
                            text: " $toplam /TRY",
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text.rich(
                      TextSpan(
                        text: "İndirimli Tutar:\n",
                        children: [
                          TextSpan(
                            text: " $indirim /TRY",
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                decoration: TextDecoration.overline),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: (140),
                  child: DefaultButton(
                    text: "Check Out",
                    press: () {
                      setState(() {
                        setState(() {
                          for (int i = 0; i < demoProducts.length; i++) {
                            if (demoProducts[i].isCart) {
                              demoProducts[i].isCart = false;
                              demoProducts[i].sales += 1;
                              debugPrint(demoProducts[i].title +
                                  '   ' +
                                  demoProducts[i].sales.toString());
                            }
                          }
                        });
                      });
                      Navigator.pushNamed(context, '/order');
                    },
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
