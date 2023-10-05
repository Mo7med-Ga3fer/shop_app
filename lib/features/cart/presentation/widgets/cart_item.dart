import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/constants.dart';
import 'package:shop_app/core/utils/styles.dart';
import 'package:shop_app/features/cart/presentation/widgets/increment.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.network(
              'https://images.macrumors.com/t/RZ3j1zy0ObAq2O6OBwIascckuQg=/2500x/article-new/2019/02/Upcoming-Apple-Products-Guide-2023-Feature.jpg',
              width: 120,
              height: 120,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ignore: prefer_const_constructors
                Text(
                  'Iphone',
                  style: TextStyles.textStyle24,
                ),
                Text(
                  r'$20.09',
                  style: TextStyles.textStyle18.copyWith(
                    color: kPrimaryColor,
                  ),
                ),
                const Increment(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
