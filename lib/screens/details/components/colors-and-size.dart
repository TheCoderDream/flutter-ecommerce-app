import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/product.dart';
import 'package:flutter/material.dart';

class ColorAndSize extends StatelessWidget {
  final Product product;
  const ColorAndSize({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Color'),
              Row(
                children: const [
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(color: Color(0xFFF8C078)),
                  ColorDot(color: Color(0xFFA29B9B)),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text:  TextSpan(
              style: const TextStyle(color: kTextColor),
              children: [
                const TextSpan(text: 'Size\n'),
                TextSpan(
                  text: '${product.size} cm',
                  style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.bold)
                )
              ]
            ),
          ),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool? isSelected;
  const ColorDot({Key? key, required this.color, this.isSelected}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: kDefaultPadding / 4,
          right: kDefaultPadding / 2
      ),
      padding: const EdgeInsets.all(2.5),
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: isSelected == true ? color: Colors.transparent
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color
        ),
      ),
    );
  }
}