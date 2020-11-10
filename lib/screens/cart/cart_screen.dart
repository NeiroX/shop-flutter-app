import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/constants.dart';
import 'components/body.dart';
import 'package:badges/badges.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  void updateUI() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(press: updateUI),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: kTextColor,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            color: kTextColor,
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
              color: kTextColor,
            ),
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
