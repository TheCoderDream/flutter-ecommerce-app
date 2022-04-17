import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/product.dart';
import 'package:e_commerce/screens/details/components/add-to-cart.dart';
import 'package:e_commerce/screens/details/components/colors-and-size.dart';
import 'package:e_commerce/screens/details/components/counter-with-fav-btn.dart';
import 'package:e_commerce/screens/details/components/description.dart';
import 'package:e_commerce/screens/details/components/product-title-with-image.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  width: double.infinity,
                  height: size.height - size.height * 0.3,
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24)
                    )
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(height: 10,),
                      Description(product: product),
                      SizedBox(height: 10,),
                      CounterWithFavBtn(),
                      SizedBox(height: 10,),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            )
          ],
        ),
      ),
    );
  }
}
