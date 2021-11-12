import 'package:aar/Models/Product.dart';
import 'package:aar/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularProductCard extends StatelessWidget {
  const PopularProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.04),
      child: SizedBox(
        width: size.width * 0.4,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.02,
              child: Container(
                padding: EdgeInsets.all(size.height * 0.01),
                decoration: BoxDecoration(
                  color: kPrimaryMiddleColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(product.images[0]),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              product.title,
              style: TextStyle(color: Colors.black),
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${product.price}",
                  style: TextStyle(
                    fontSize: size.width * 0.06,
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(size.width * 0.02),
                    width: size.width * 0.1,
                    height: size.height * 0.05,
                    decoration: BoxDecoration(
                      color: kPrimaryMiddleColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset('assets/icons/heart_full.svg', color: product.isFavourite ? Color(0xFFFF4848) : Color(0xFFDBDEE4)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
