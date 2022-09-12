import 'package:flutter/material.dart';
import 'package:ucode_shop_app/models/product.dart';

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
    );
  }
}
