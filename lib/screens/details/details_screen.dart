import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ucode_shop_app/constants.dart';
import 'package:ucode_shop_app/screens/details/body.dart';
import '../../models/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: builAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar builAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: product.color,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/cart.svg',
            color: Colors.white,
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
