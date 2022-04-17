import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddToCart extends StatelessWidget {
  final Product product;
  const AddToCart({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: kDefaultPadding),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product.color,
              )
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                'icons/add_to_cart.svg',
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(product.color),
                  shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)
                  )),
                ),
                onPressed: () {  },
                child: const Text(
                  'BUY NOW',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
