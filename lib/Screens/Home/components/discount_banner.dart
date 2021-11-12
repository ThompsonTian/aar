import 'package:aar/constants.dart';
import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.height * 0.01,
      ),
      padding: EdgeInsets.symmetric(horizontal: size.height*0.02, vertical: size.width*0.02),
      width: double.infinity,
      height: size.height * 0.1,
      decoration: BoxDecoration(
        color: kPrimaryMiddleColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
            text: "A Summer Suprise\n",
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                text: "Cashback 20%",
                style: TextStyle(
                  fontSize: 24,
                ),
              )
            ]),
      ),
    );
  }
}
