import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/product.dart';
import 'package:e_commerce/screens/details/details.dart';
import './categories.dart';
import './item-card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
          child: Text(
            'Women',
            style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: Product.products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 0.75
              ),
              itemBuilder: (context, index) => ItemCard(
                  product: Product.products[index],
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsScreen(product: Product.products[index]))
                    );
                  }
              ),
            ),
          ),
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}
