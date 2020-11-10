import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'cart_item.dart';
import 'total.dart';

class Body extends StatefulWidget {
  final Function press;

  const Body({Key key, this.press}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: buildListViewChildren());
  }

  List<Widget> buildListViewChildren() {
    List<Widget> children = [];
    for (int i = 0; i < cart.cartList.length; i++) {
      children.add(
        Dismissible(
          key: UniqueKey(),
          child: CartItem(product: cart.cartList[i]),
          onDismissed: (direction) {
            cart.removeFromCart(i);
            widget.press();
            Scaffold.of(context).showSnackBar(
              new SnackBar(
                content: Text('Product was deleted from cart'),
              ),
            );
          },
        ),
      );
    }
    if (children.length == 0) {
      children.add(Padding(
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: Text(
          'No products in the cart',
          style: Theme.of(context).textTheme.headline5,
          textAlign: TextAlign.center,
        ),
      ));
    }
    children.add(
      Total(),
    );
    return children;
  }
}
