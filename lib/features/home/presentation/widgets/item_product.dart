import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_app/core/utils/app_router.dart';
import 'package:shop_app/core/utils/constants.dart';
import 'package:shop_app/core/utils/styles.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push('/${AppRouter.kProductDetailsView}');
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: const Color(0xffFFFFFF),
        elevation: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://images.macrumors.com/t/RZ3j1zy0ObAq2O6OBwIascckuQg=/2500x/article-new/2019/02/Upcoming-Apple-Products-Guide-2023-Feature.jpg'),
                      fit: BoxFit.fill)),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Iphone 13',
                    style: TextStyles.textStyle18,
                  ),
                  Text(
                    r'$20.09',
                    style: TextStyles.textStyle18
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    '  Add to cart  ',
                    style: TextStyles.textStyle14.copyWith(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
