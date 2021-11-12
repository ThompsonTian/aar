import 'package:aar/Components/popular_product_card.dart';
import 'package:aar/Models/Product.dart';
import 'package:aar/Screens/Home/components/popular_product.dart';
import 'package:aar/Screens/Home/components/product_categories.dart';
import 'package:aar/Screens/Home/components/section_title.dart';
import 'package:aar/Screens/Home/components/spacial_offers.dart';
import 'package:aar/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.02),
            HomeHeader(),
            SizedBox(height: size.height * 0.02),
            DiscountBanner(),
            SizedBox(height: size.height * 0.02),
            ProductCategories(),
            SizedBox(height: size.height * 0.02),
            SpecialOffers(),
            SizedBox(height: size.height * 0.03),
            PopularProduct(),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}

