import 'dart:html';

import 'package:e_commerce/constants.dart';
import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
            icon: Icons.remove,
          press: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
          }
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            }
        )
      ],
    );
  }
  
  SizedBox buildOutlineButton({required IconData icon, void Function()? press}) {
    return SizedBox(
      height: 32,
      width: 40,
      child: OutlinedButton(
        onPressed: press,
        child: Icon(icon),
        style: ButtonStyle(
          padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.zero),
          shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13)
          ))
        ),
      ),
    );
  }
}
