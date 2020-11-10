import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:badges/badges.dart';

import 'components/body.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Scaffold(
      backgroundColor: widget.product.color,
      appBar: buildAppBar(context),
      body: Body(
        press: () {
          setState(() {
          });
        },
        product: widget.product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: widget.product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg', color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Badge(
            badgeColor: Colors.redAccent,
            animationType: BadgeAnimationType.scale,
            position: BadgePosition.topRight(),
            elevation: 3,
            showBadge: cart.cartList.length > 0 ? true : false,
            badgeContent: Text('${cart.cartList.length}'),
            child: SvgPicture.asset(
              'assets/icons/cart.svg',
              color: Colors.white,
            ),
          ),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => CartScreen())),
        ),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
