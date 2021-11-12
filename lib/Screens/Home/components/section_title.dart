import 'package:aar/constants.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 24,
                color: kPrimaryColor,
                fontWeight: FontWeight.w600),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              "See more",
              style: TextStyle(
                fontSize: 16,
                color: kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
