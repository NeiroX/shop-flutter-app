import 'package:flutter/material.dart';
import 'cart_counter.dart';
import 'package:flutter_svg/svg.dart';

class CounterWithFavouriteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(8),
          height: 32,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFFF6464),
          ),
          child: SvgPicture.asset('assets/icons/heart.svg'),
        ),
      ],
    );
  }
}
