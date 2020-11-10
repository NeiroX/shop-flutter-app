import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
            press: () {
              setState(() {
                numOfItems > 1 ? numOfItems-- : numOfItems = 1;
              });
            },
            iconData: Icons.remove),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(fontWeight: FontWeight.bold, color: kTextColor),
          ),
        ),
        buildOutlineButton(
            press: () {
              setState(() {
                numOfItems < 21 ? numOfItems++ : numOfItems = 21;
              });
            },
            iconData: Icons.add)
      ],
    );
  }

  Widget buildOutlineButton({Function press, IconData iconData}) {
    return SizedBox(
        height: 32,
        width: 40,
        child: OutlineButton(
          padding: EdgeInsets.zero,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          onPressed: press,
          child: Icon(iconData),
        ));
  }
}
