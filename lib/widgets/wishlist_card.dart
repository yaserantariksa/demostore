import 'package:flutter/material.dart';
import 'package:fluttershop/theme.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor4,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/image_shoes.png',
              width: 70,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'COURT VISION 2.0 PRO VERSION',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '\$57.14',
                  style: priceTextStyle,
                )
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Image.asset(
            'assets/button_favorite_fill.png',
            width: 34,
          )
        ],
      ),
    );
  }
}
