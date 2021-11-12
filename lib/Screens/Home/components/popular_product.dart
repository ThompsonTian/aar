import 'package:aar/Components/popular_product_card.dart';
import 'package:aar/Models/Product.dart';
import 'package:aar/Screens/Home/components/section_title.dart';
import 'package:flutter/material.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key? key, required this.press,
  }) : super(key: key);

  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SectionTitle(text: "Popular Product", press: () {}),
        SizedBox(height: size.height * 0.02),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                    (index) => PopularProductCard(
                  product: demoProducts[index],
                ),
              ),
              SizedBox(
                width: size.width * 0.2,
              )
            ],
          ),
        ),
      ],
    );
  }
}
