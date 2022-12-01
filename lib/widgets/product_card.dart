import 'package:flutter/material.dart';
import 'package:fluttershop/models/product_model.dart';
import 'package:fluttershop/providers/product_provider.dart';
import 'package:fluttershop/theme.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  final ProductModel? product;
  ProductCard({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    var galleryUrl = product?.galleries?[0].url;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(right: defaultMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffECEDEF),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.network(
              galleryUrl ??
                  'http://10.0.2.2:8000/storage/gallery/logoyaserred.png',
              width: 215,
              height: 150,
              fit: BoxFit.cover,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hiking',
                    style: secondaryTextStyle.copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'COURT VISION 2.0 PRO VERSION',
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: semiBold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    '\$58.76',
                    style: priceTextStyle,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
