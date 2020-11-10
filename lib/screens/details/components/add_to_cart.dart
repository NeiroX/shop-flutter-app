import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';

class AddToCart extends StatelessWidget {
  final Product product;
  final Function press;

  const AddToCart({Key key, this.product, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              border: Border.all(color: product.color),
              borderRadius: BorderRadius.circular(18),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/add_to_cart.svg',
                color: product.color,
              ),
              onPressed: () {
                cart.addToCart(product);
                press();
              },
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: product.color,
              ),
              height: 50,
              child: FlatButton(
                onPressed: () {
                  cart.addToCart(product);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartScreen()));
                },
                child: Text(
                  'BUY NOW',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
