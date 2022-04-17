import 'package:e_commerce/models/product.dart';
import 'package:e_commerce/screens/details/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      body: Body(product: product,),
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('icons/back.svg', color: Colors.white,),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(onPressed: () {}, icon: SvgPicture.asset('icons/search.svg')),
          IconButton(onPressed: () {}, icon: SvgPicture.asset('icons/cart.svg')),
          SizedBox(width: 10,)
        ],
      ),
    );
  }
}
