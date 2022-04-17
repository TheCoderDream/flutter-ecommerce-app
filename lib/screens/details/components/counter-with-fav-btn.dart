import 'package:e_commerce/screens/details/components/cart-counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          padding: const EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color:  Color(0xFFFF6464),
          ),
          child: SvgPicture.asset('icons/heart.svg'),
        )
      ],
    );
  }
}
