import 'package:aar/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconButtonWithCounter extends StatelessWidget {
  const IconButtonWithCounter({
    Key? key, required this.svgSource,this.numOfItems = 0, required this.press,
  }) : super(key: key);

  final String svgSource;
  final int numOfItems;
  final GestureTapCallback press;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(size.width*0.025),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: kPrimaryLightColor.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              svgSource,
            ),
          ),
          if(numOfItems != 0)
            Positioned(
              right: 0,
              top: -7,
              child: (Container(
                height: size.height * 0.04,
                width: size.width * 0.04,
                decoration: BoxDecoration(
                    color: Color(0xFFFF4848),
                    shape: BoxShape.circle,
                    border:
                    Border.all(width: 1, color: Colors.white)),
                child: Center(
                  child: Text(
                    "$numOfItems",
                    style: TextStyle(
                      fontSize:10,
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )),
            ),
        ],
      ),
    );
  }
}