import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_app/core/utils/constants.dart';
import 'package:shop_app/core/utils/styles.dart';
import 'package:shop_app/features/cart/presentation/widgets/cart_item.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 3.h,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return const CartItem();
              }),
        ),
        Material(
          elevation: 18,
          child: SizedBox(
            height: 10.h,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'TOTAL',
                        style: TextStyles.textStyle14.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        r'$500.09',
                        style: TextStyles.textStyle18.copyWith(
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Checkout',
                        style: TextStyles.textStyle18.copyWith(
                          color: Colors.white,
                        ),
                      )),
                ]),
          ),
        ),
      ],
    );
  }
}
