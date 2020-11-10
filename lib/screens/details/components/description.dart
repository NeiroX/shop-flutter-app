import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';

class Description extends StatelessWidget {
  final Product product;

  const Description({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
          product.description,
          style: TextStyle(height: 1.5)
      ),
    );
  }
}
