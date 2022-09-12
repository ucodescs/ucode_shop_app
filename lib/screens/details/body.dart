import 'package:flutter/material.dart';
import 'package:ucode_shop_app/constants.dart';
import 'package:ucode_shop_app/models/product.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.2),
                height: 500,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Aristocratic Hand Bag",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
