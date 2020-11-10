import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/constants.dart';
import 'package:badges/badges.dart';
import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
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
        onPressed: () {},
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
