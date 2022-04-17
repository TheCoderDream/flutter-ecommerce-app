import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class UAppBar extends StatelessWidget {
  const UAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'icons/back.svg',
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      actions: <Widget> [
        IconButton(
          icon: SvgPicture.asset(
            'icons/search.svg',
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            'icons/cart.svg',
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        const SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
