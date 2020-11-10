import 'package:shop_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/details_screen.dart';

class CartItem extends StatelessWidget {
  final Product product;

  const CartItem({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding / 4, horizontal: kDefaultPadding / 2),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsScreen(product: product)));
        },
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: product.color, borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                product.image,
              ),
              Text(
                '${product.title}',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              Text(
                '\$${product.price}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}