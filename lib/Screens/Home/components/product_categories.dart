import 'package:aar/Screens/Home/components/body.dart';
import 'package:aar/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCategories extends StatelessWidget {
  const ProductCategories({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/logo.svg", "text": "Logo"},
      {"icon": "assets/icons/logo.svg", "text": "Logo"},
      {"icon": "assets/icons/logo.svg", "text": "Logo"},
      {"icon": "assets/icons/logo.svg", "text": "Logo"},
      {"icon": "assets/icons/logo.svg", "text": "Logo"},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length,
                  (index) => CategoryCard(
                  size: size,
                  icon: categories[index]["icon"],
                  text: categories[index]["text"],
                  press: () {}))
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.size,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: size.height * 0.07,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(size.width * 0.03),
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}