import 'package:flutter/material.dart';
import 'package:zrhonline/Product/product.dart';
import 'package:zrhonline/Screen/Product_Details/components/MyAppBar.dart';
import 'package:zrhonline/Screen/Product_Details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  

  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
    ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments ;
    return  Scaffold(
      backgroundColor: const  Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: agrs.product.rating),
      ),
      body: Body(product: agrs.product),
    )
;
  }
}

class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({required this.product});
}
