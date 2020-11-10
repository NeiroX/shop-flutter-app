import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class Total extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        children: [
          Divider(
            color: kTextColor,
            thickness: 3,
            indent: 20,
            endIndent: 20,
          ),
          TotalElement(
            name: 'Total:',
            value: '\$${cart.total_price}',
          ),
          TotalElement(
            name: 'Items:',
            value: '${cart.cartList.length}',
          ),
        ],
      ),
    );
  }
}

class TotalElement extends StatelessWidget {
  final String name;
  final String value;

  const TotalElement({Key key, this.name, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 19),
          ),
          Text(
            value,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ],
      ),
    );
  }
}
