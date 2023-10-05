import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_app/core/utils/constants.dart';
import 'package:shop_app/core/utils/styles.dart';
import 'package:shop_app/core/widgets/like_button.dart';
import 'package:shop_app/features/auth/presentaion/widgets/custom_button.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 30.h,
                width: double.infinity,
                child: Image.network(
                  'https://images.macrumors.com/t/RZ3j1zy0ObAq2O6OBwIascckuQg=/2500x/article-new/2019/02/Upcoming-Apple-Products-Guide-2023-Feature.jpg',
                  fit: BoxFit.fill,
                )),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Iphone 13',
                          style: TextStyles.textStyle24
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          r'$20.09',
                          style: TextStyles.textStyle24
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20.w, child: const LikeButton()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(
                          'https://cdn6.aptoide.com/imgs/6/4/a/64a6d7c9528ac7cb46e9cec8e4910bd7_icon.png'),
                    ),
                  ),
                  const Text(
                    'Shop Store',
                    style: TextStyles.textStyle18,
                  ),
                  const Spacer(),
                  TextButton(
                      style: const ButtonStyle(
                          side: MaterialStatePropertyAll(
                              BorderSide(color: Colors.black))),
                      onPressed: () {},
                      child: Text(
                        'Show',
                        style: TextStyles.textStyle14
                            .copyWith(color: kPrimaryColor),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14, bottom: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description of product',
                    style: TextStyles.textStyle18.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                    style: TextStyles.textStyle14,
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: Container(
                    color: kPrimaryColor,
                    child: const CustomButton(txt: 'Add to cart'))),
            SizedBox(
              height: 3.h,
            )
          ],
        ),
      ),
    );
  }
}
