import 'package:aar/Components/icon_button_with_counter.dart';
import 'package:aar/Components/rounded_search_field.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundedSearchField(size: size),
          IconButtonWithCounter(
            svgSource:  'assets/icons/cart_5.svg',
            numOfItems: 0,
            press: () {},
          ),
          IconButtonWithCounter(
            svgSource: 'assets/icons/bell_3.svg',
            numOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
